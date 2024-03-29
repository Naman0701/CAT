from django.shortcuts import render,redirect,HttpResponse
from Home.models import Student,Teacher,Subject,Attendance,Mentor,AicteP,Enroll,Class,Teaches,Internal,External
from django.contrib.auth.models import User,auth

def Attend(req):
    id=req.session['id']
    d=do_attend(id)
    return render(req,'S_attendance.html',d)
def do_attend(id):
    class box:
        c_id: str
        c_name: str
        ac: int
        tc: int
        ap: int
        col: str
    b=[]
    data=Student.objects.filter(Usn=id)
    cid=Enroll.objects.filter(Usn=id)
    corid=[]
    for i in cid:
        courses=Teaches.objects.filter(Class_id=i.Class_id)
        for j in courses:
            corid.append(j.Sub_code)
    tc=0
    ac=0
    ap=0
    for i in corid:
        obj=box()
        obj.c_id=i.Sub_code
        obj.c_name=i.Sub_name
        a=Attendance.objects.filter(Usn=id).filter(Sub_code=i.Sub_code)
        for j in a:
            tc+=1
            if j.Mark==True:
                ac+=1
        try:
            ap=round(ac/tc*100,2)
        except ZeroDivisionError:
            ap=100
        obj.col='#007300'
        if ap<65:
            obj.col='#d00000'
        obj.tc=tc
        obj.ac=ac
        obj.ap=ap
        tc=0
        ac=0
        b.append(obj)
    d={
        'b':b,
    'name': data.get().Fname + ' ' + data.get().Lname,
    'work':'Attend',
        'role':'Student'
    }
    return d

def Attendance_Subject(req,subject):
    id = req.session['id']
    d=do_Att_sub(id,subject)
    return render(req,'attend_subject.html',d)

def do_Att_sub(id,subject):
    b=[]
    class box:
        date:str
        img:str
    data = Student.objects.filter(Usn=id)
    sub= Subject.objects.filter(Sub_name=subject)
    code=sub.get().Sub_code
    atd=Attendance.objects.filter(Usn=id).filter(Sub_code=code).order_by('-Date')
    for i in atd:
        mark='tick.png'
        if i.Mark==False:
            mark='x.png'
        obj=box()
        obj.date=i.Date
        obj.img=mark
        b.append(obj)
    d={
        'b':b,
        'name': data.get().Fname + ' ' + data.get().Lname,
        'sub':sub.get().Sub_name,
    'work':'Attend',
        'role':'Student'
    }
    return d

def aicte(req):
    id = req.session['id']
    d=do_aicte(id)
    return render(req,'Aicte.html',d)

def do_aicte(id):
    b=[]
    class box:
        name:str
        point:int
        date:str
    sum=0
    data = Student.objects.filter(Usn=id)
    m_name= f'{Mentor.objects.filter(Usn=id).get().mentor_d.Fname} {Mentor.objects.filter(Usn=id).get().mentor_d.Lname}'
    allwork=AicteP.objects.filter(Usn=id).order_by('-Date')
    for j in allwork:
        obj=box()
        obj.name=j.Activity
        obj.point=j.Point
        obj.date=str(j.Date)
        sum+=j.Point
        b.append(obj)
    Ment=Mentor.objects.get(Usn=id)
    Ment.Points=sum
    Ment.save()
    d={
        'b':b,
        'id':id,
        'name':data.get().Fname + ' ' + data.get().Lname,
        'm_name':m_name,
        'sum':Ment.Points,
    'work':'Aicte',
        'role':'Student'
    }
    return d
def ia(req):
    id = req.session['id']
    d=do_ia(id)
    return render(req,'ia.html',d)
def do_ia(id):
    class box:
        c_id: str
        c_name: str
        i1: str
        i2: str
        i3: str
        asnmt: str

    b = []
    default='--'
    data = Student.objects.filter(Usn=id)
    cid = Enroll.objects.filter(Usn=id)
    corid = []
    for i in cid:
        courses = Teaches.objects.filter(Class_id=i.Class_id)
        for j in courses:
            corid.append(j.Sub_code)

    for i in corid:
        obj=box()
        obj.c_id=i.Sub_code
        obj.c_name=i.Sub_name
        a=Internal.objects.filter(Usn=id).filter(Sub_code=i.Sub_code)
        if not a.exists():
            new=Internal.objects.create(Usn=data.first(),Sub_code=i)
            new.save()
        obj.i1=a.get().IA1 if a.get().IA1!=None else default
        obj.i2=a.get().IA2 if a.get().IA2!=None else default
        obj.i3=a.get().IA3 if a.get().IA3!=None else default
        obj.asnmt=a.get().Assignment if a.get().Assignment!=None else default
        b.append(obj)
    d = {
        'b': b,
        'name': data.get().Fname + ' ' + data.get().Lname,
        'work': 'IA',
        'role': 'Student'
    }
    return d
def vtu(req):
    id = req.session['id']
    d=do_vtu(id)
    return render(req,'vtu.html',d)
def do_vtu(id):
    class box:
        c_id: str
        c_name: str
        ia: str
        exam: str
        total: str
        result: str
        grade: str

    b = []
    data = Student.objects.filter(Usn=id)
    cid = Enroll.objects.filter(Usn=id)
    corid = []
    for i in cid:
        courses = Teaches.objects.filter(Class_id=i.Class_id)
        for j in courses:
            corid.append(j.Sub_code)
    for i in corid:
        obj=box()
        obj.c_id = i.Sub_code
        obj.c_name = i.Sub_name
        a = Internal.objects.filter(Usn=id).filter(Sub_code=i.Sub_code)
        exam= External.objects.filter(Usn=id).filter(Sub_code=i.Sub_code)
        if not exam.exists():
            new=External.objects.create(Usn=data.first(),Sub_code=i)
            new.save()
        I1=a.get().IA1 if a.get().IA1!='AB' else '0'
        I2=a.get().IA2 if a.get().IA2!='AB' else '0'
        I3=a.get().IA3 if a.get().IA3!='AB' else '0'
        Asn=a.get().Assignment if a.get().Assignment!='AB' else '0'
        print(I1,I2,I3,Asn)
        b.append(obj)
    d={
        'b': b,
        'name': data.get().Fname + ' ' + data.get().Lname,
        'work': 'VTU',
        'role': 'Student'
    }
    return d
