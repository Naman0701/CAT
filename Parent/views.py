from django.shortcuts import render,redirect,HttpResponse
from Home.models import Student,Parent,Teacher,Subject,Attendance,Mentor,AicteP
from django.contrib.auth.models import User,auth
from Student import views

def Attend(req):
    pid = f"+91{req.session['id']}"
    id=Parent.objects.filter(Phone=pid).get().Usn.Usn
    d=views.do_attend(id)
    d['role']='Parent'
    return render(req, 'S_attendance.html', d)
def Attendance_Subject(req,sub):
    pid = f"+91{req.session['id']}"
    id=Parent.objects.filter(Phone=pid).get().Usn.Usn
    d=views.do_Att_sub(id,sub)
    d['role']='Parent'
    return render(req,'attend_subject.html',d)
def aicte(req):
    pid = f"+91{req.session['id']}"
    id = Parent.objects.filter(Phone=pid).get().Usn.Usn
    d = views.do_aicte(id)
    d['role'] = 'Parent'
    return render(req,'Aicte.html',d)
def ia(req):
    pid = f"+91{req.session['id']}"
    id=Parent.objects.filter(Phone=pid).get().Usn.Usn
    d=views.do_ia(id)
    d['role']='Parent'
    return render(req,'ia.html',d)
def vtu(req):
    pid = f"+91{req.session['id']}"
    id=Parent.objects.filter(Phone=pid).get().Usn.Usn
    d=views.do_vtu(id)
    d['role']='Parent'
    return render(req,'vtu.html',d)