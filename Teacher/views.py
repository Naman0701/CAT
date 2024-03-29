from django.shortcuts import render,redirect
from Home.models import Student,Teacher,Subject,Attendance,Mentor,AicteP,Teaches,Enroll
from django.contrib import messages
from datetime import date

def Attend(req):
    class box:
        s_code:str
        s_name:str
        class_id:str
    b=[]
    id=req.session['id']
    data = Teacher.objects.filter(Ssn=id)
    sub= Teaches.objects.filter(Teacher_id=id)
    if sub.exists():
        for i in sub:
            s_code= f'{i.Sub_code}'.split()[0]
            obj=box()
            obj.s_code=s_code
            obj.s_name=Subject.objects.filter(Sub_code=s_code).get().Sub_name
            obj.class_id=i.Class_id.Class_id
            b.append(obj)
    d = {
        'b':b,
        'name': data.get().Fname + ' ' + data.get().Lname,
        'work':'Attend',
        'role':'Teacher'
        }

    return render(req,'T_attend.html',d)
def en_Attend(req,sub,class_id):
    class box:
        Usn:str
        Nams:str
    b=[]
    id = req.session['id']
    data = Teacher.objects.filter(Ssn=id)
    s_name=Subject.objects.filter(Sub_code=sub).get().Sub_name
    Stu=Enroll.objects.filter(Class_id=class_id).order_by('Usn')
    for i in Stu:
        obj=box()
        obj.Usn=i.Usn.Usn
        obj.Nams=f'{i.Usn.Fname} {i.Usn.Lname}'
        b.append(obj)
    d={
        'b':b,
        'date':date.today(),
        'name': data.get().Fname + ' ' + data.get().Lname,
        'sub': sub,
        's_name':s_name,
        'class_id': class_id,
        'work':'Attend',
        'role':'Teacher'
    }
    dates=Attendance.objects.filter(Sub_code=sub,Date=date.today(),Usn__enroll__Class_id=class_id)
    if dates.exists():
        messages.success(req, "Attendance Already Entered For Today")
        return redirect('/home/Teacher/ATTENDANCE/')
    return render(req,'T_edit.html',d)

def add_attend(req,sub,class_id):
    class box:
        usn: str
        name: str

    b = []
    id = req.session['id']
    data = Teacher.objects.filter(Ssn=id)
    s_name = Subject.objects.filter(Sub_code=sub).get().Sub_name
    Stu=Enroll.objects.filter(Class_id=class_id).order_by('Usn')
    for i in Stu:
        obj = box()
        obj.usn = i.Usn.Usn
        obj.name = f'{i.Usn.Fname} {i.Usn.Lname}'
        b.append(obj)

    d={
        'b':b,
        'name': data.get().Fname + ' ' + data.get().Lname,
        'sub': sub,
        's_name': s_name,
        'class_id': class_id,
        'work':'Attend',
        'role':'Teacher'

    }
    return render(req,'T_add.html',d)

def add_sub_attend(req,sub,class_id):
    din = req.POST.get('date')
    Stu=Enroll.objects.filter(Class_id=class_id).order_by('Usn')
    Subj = Subject.objects.get(Sub_code=sub)
    if  not Attendance.objects.filter(Date=din,Sub_code=sub,Usn__enroll__Class_id=class_id).exists():

        for i in Stu:
            mark=req.POST.get(i.Usn.Usn,'off')
            val=True
            if mark=='off':
                val=False
            attend=Attendance.objects.create(Usn=i.Usn,Sub_code=Subj,Date=din,Mark=val)
            attend.save()

        messages.success(req,"Attendance Added Successfully")
        return redirect('/home/Teacher/ATTENDANCE/')
    else:
        messages.success(req,"Attendance Already Exists")
        return redirect('/home/Teacher/ATTENDANCE/')



def done_Attend(req,sub,class_id):
    Stu=Enroll.objects.filter(Class_id=class_id).order_by('Usn')
    Subj=Subject.objects.get(Sub_code=sub)
    dat=date.today()
    for i in Stu:
        mark=req.POST.get(i.Usn.Usn,'off')
        val=True
        if mark=='off':
            val=False
        attend=Attendance.objects.create(Usn=i.Usn,Sub_code=Subj,Date=dat,Mark=val)
        attend.save()
    messages.success(req,"Attendance Added Successfully")

    return redirect('/home/Teacher/ATTENDANCE/')

def v_Attend(req,sub,class_id):
    class box:
        Usn:str
        Name:str
        ac:int
        tc:int
        ap:int
        col:str
    b=[]
    id=req.session['id']
    teach=Teacher.objects.filter(Ssn=id)
    data=Enroll.objects.filter(Class_id=class_id).order_by('Usn')
    for i in data:
        obj=box()
        a=Attendance.objects.filter(Usn=i.Usn.Usn).filter(Sub_code=sub)
        tc = 0
        ac = 0
        ap = 0
        for j in a:
            tc+=1
            if j.Mark == True:
                ac += 1
        try:
            ap = round(ac / tc * 100, 2)
        except ZeroDivisionError:
            ap = 0
        obj.col = '#007300'
        if ap < 65:
            obj.col = '#d00000'
        obj.Usn=i.Usn
        obj.Name=f'{i.Usn.Fname} {i.Usn.Lname}'
        obj.tc=tc
        obj.ap=ap
        obj.ac=ac
        b.append(obj)
    d={
        'b':b,
        'name': teach.get().Fname + ' ' + teach.get().Lname,
        's_name':Subject.objects.filter(Sub_code=sub).get().Sub_name,
        'class_id':class_id,
        'work':'Attend',
        'role':'Teacher'
    }

    return render(req,'T_class_attend.html',d)

def e_Attend(req,sub,class_id):
    din = []
    pair = []
    id = req.session['id']
    teach = Teacher.objects.filter(Ssn=id)
    dates=Attendance.objects.filter(Sub_code=sub,Usn__enroll__Class_id=class_id).order_by('-Date')
    for i in dates:
        dinak=str(i.Date)
        p1=f'{dinak}-{i.Usn}'
        if (p1 in pair) or (dinak not in din):
            din.append(dinak)
            pair.append(p1)
        else:
            pass
    d={
        'b': din,
        'name': teach.get().Fname + ' ' + teach.get().Lname,
        's_name': Subject.objects.filter(Sub_code=sub).get().Sub_name,
        's_code':sub,
        'class_id': class_id,
        'work':'Attend',
        'role':'Teacher'
    }
    return render(req,'T_editatt.html',d)

def ed_Attend(req,sub,class_id,dat):
    class box:
        usn:str
        name:str
        mark:int
    b = []
    id = req.session['id']
    teach = Teacher.objects.filter(Ssn=id)
    dates = Attendance.objects.filter(Date=dat,Usn__enroll__Class_id=class_id,Sub_code=sub)
    for i in dates:
        obj=box()
        obj.usn=i.Usn.Usn
        obj.name=f'{i.Usn.Fname} {i.Usn.Lname}'
        obj.mark=0
        if i.Mark==True:
            obj.mark=1
        b.append(obj)
    d={
        'b':b,
        'name': teach.get().Fname + ' ' + teach.get().Lname,
        'sub':sub,
        's_name': Subject.objects.filter(Sub_code=sub).get().Sub_name,
        's_code':sub,
        'dat':dat,
        'class_id': class_id,
        'work':'Attend',
        'role':'Teacher'
    }
    return render(req,'T_edit_A.html',d)
def up_attend(req,sub,class_id,dat):
    Stu=Enroll.objects.filter(Class_id=class_id).order_by('Usn')
    Subj = Subject.objects.get(Sub_code=sub)
    din = dat
    for i in Stu:
        mark = req.POST.get(i.Usn.Usn, 'off')
        val = True
        if mark == 'off':
            val = False
        attend = Attendance.objects.get(Usn=i.Usn, Sub_code=Subj, Date=dat)
        attend.Mark = val
        attend.save()

    return redirect('/home/Teacher/ATTENDANCE/')
def del_Attend(req,sub,class_id,dat):
    din = []
    pair = []
    id = req.session['id']
    teach = Teacher.objects.filter(Ssn=id)
    dates = Attendance.objects.filter(Sub_code=sub, Usn__enroll__Class_id=class_id).order_by('-Date')
    for i in dates:
        dinak = str(i.Date)
        p1 = f'{dinak}-{i.Usn}'
        if (p1 in pair) or (dinak not in din):
            din.append(dinak)
            pair.append(p1)
        else:
            pass
    d = {
        'b': din,
        'name': teach.get().Fname + ' ' + teach.get().Lname,
        's_name': Subject.objects.filter(Sub_code=sub).get().Sub_name,
        's_code': sub,
        'class_id': class_id,
        'dat':dat,
        'work':'Attend',
        'role':'Teacher'
    }

    return render(req,'T_conf_del.html',d)
def cdel_Attend(req,sub,class_id,dat):
    Attendance.objects.filter(Sub_code=sub,Date=dat,Usn__enroll__Class_id=class_id).delete()
    messages.success(req,"Attendance Deleted Successfully")
    return redirect('/home/Teacher/ATTENDANCE/')

def aicte(req):
    class box:
        Usn:str
        Name:str
        Points:int
    b=[]
    id=req.session['id']
    data = Teacher.objects.filter(Ssn=id)
    stu=Mentor.objects.filter(mentor_d=id)
    for i in stu:
        sum=0
        obj=box()
        no = AicteP.objects.filter(Usn=i.Usn)
        for j in no:
            sum+=j.Point
        i.Points=sum
        i.save()
        obj.Usn=i.Usn.Usn
        obj.Name=f'{i.Usn.Fname} {i.Usn.Lname}'
        obj.Points=i.Points
        b.append(obj)
    d = {
        'b':b,
        'name': data.get().Fname + ' ' + data.get().Lname,
        'work':'Aicte',
        'role':'Teacher'
    }
    return render(req,'T_aicte.html',d)

def a_aicte(req,usn):
    id = req.session['id']
    data = Teacher.objects.filter(Ssn=id)
    s_name = f'{Student.objects.filter(Usn=usn).get().Fname} {Student.objects.filter(Usn=usn).get().Lname}'
    d = {
        's_n': s_name,
        'usn':usn,
        'name': data.get().Fname + ' ' + data.get().Lname,
        'work':'Aicte',
        'role':'Teacher'
    }
    return render(req,'T_a_aicte.html',d)

def a_aicte_done(req,usn):
    name=req.POST.get('activity')
    dat=req.POST.get('date')
    point=req.POST.get('point')
    stu=Student.objects.get(Usn=usn)
    aic=AicteP.objects.create(Usn=stu,Date=dat,Activity=name,Point=point)
    aic.save()
    messages.success(req,'Activity Added Successfully')
    return redirect('/home/Teacher/AICTE/')

def v_aicte(req,usn):
    class box:
        Date: str
        Activity: str
        Points: int
        isd:int
    b = []
    id = req.session['id']
    data = Teacher.objects.filter(Ssn=id)
    stu = AicteP.objects.filter(Usn=usn).order_by('Usn')
    s_name=f'{Student.objects.filter(Usn=usn).get().Fname} {Student.objects.filter(Usn=usn).get().Lname}'
    for i in stu:
        obj=box()
        obj.Date=str(i.Date)
        obj.Activity=i.Activity
        obj.Points=i.Point
        obj.isd=i.id
        b.append(obj)
    d={
        'b':b,
        'usn':usn,
        's_n':s_name,
        'name': data.get().Fname + ' ' + data.get().Lname,
        'work':'Aicte',
        'role':'Teacher'
    }
    return render(req,'T_v_aicte.html',d)
def d_aicte(req,usn,isd):

    class box:
        Date: str
        Activity: str
        Points: int
        isd:int
    b = []
    id = req.session['id']
    data = Teacher.objects.filter(Ssn=id)
    stu = AicteP.objects.filter(Usn=usn).order_by('Usn')
    s_name=f'{Student.objects.filter(Usn=usn).get().Fname} {Student.objects.filter(Usn=usn).get().Lname}'
    for i in stu:
        obj=box()
        obj.Date=str(i.Date)
        obj.Activity=i.Activity
        obj.Points=i.Point
        obj.isd=i.id
        b.append(obj)
    d={
        'b':b,
        'usn':usn,
        'isd':isd,
        'a_name':AicteP.objects.get(id=isd).Activity,
        's_n':s_name,
        'name': data.get().Fname + ' ' + data.get().Lname,
        'work':'Aicte',
        'role':'Teacher'
    }
    return render(req,'T_del_aicte.html',d)
def cd_aicte(req,usn,isd):
    AicteP.objects.filter(id=isd).delete()
    messages.success(req,'Activity Deleted Successfully')
    return redirect('/home/Teacher/AICTE/')

