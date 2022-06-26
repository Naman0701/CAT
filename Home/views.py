from django.shortcuts import render,redirect
from .models import Student,Teacher,Parent
from django.views.decorators.cache import cache_control
from django.contrib.auth.models import User,auth
from django.contrib import messages

class box:
    name: str
    img : str
    title: str
    desc: str
    link: str

def register(req):
    id = req.POST.get('id')
    pwd = req.POST.get('pwd')
    role = req.POST.get('role')
    if role=='T':
        staff=True
        data=Teacher.objects.filter(Ssn=id)
    elif role=='S':
        staff = False
        data=Student.objects.filter(Usn=id)
    else:
        staff=False
        temp='+91'+id
        data=Parent.objects.filter(Phone=temp)
    if data.exists():
        if not User.objects.filter(username=id).exists():
            user=User.objects.create_user(username=id,
                                          password=pwd,
                                          email=data.get().Email,
                                          first_name=data.get().Fname,
                                          last_name=data.get().Lname,
                                          is_staff=staff)
            user.save()
        else:
            messages.success(req, 'User Already Registered')

    else:
        messages.success(req, 'Invalid Credentials')


def login(req):
    if req.method== 'POST':
        action = req.POST.get('action')
        if action == 'log_in':
            return render(req, 'home.html')
        elif action== 'register':
            register(req)
            return redirect('/')
    else:
        return render(req,'login.html')

def make_home(id):
    kid = ''
    i = 1
    staff = 'Student'
    at = ('Enter the attendance of the students.', 'View your attendance.', "View your child's attendance.")
    ai = ('Enter the AICTE points of the students based on the activities attended.',
          'View your AICTE points based on the activities attended.', "View your child's AICTE points and activities.")
    ia = ('Enter Internal Marks of the students', 'View your Internal Marks', "View your child's Internal Score")
    vtu = ('Enter University Marks of the students', 'View your University Marks', "View your child's University Marks")
    data = User.objects.filter(username=id)
    if data.get().is_superuser:
        return redirect('/admin')
    check_parent = Parent.objects.filter(Phone=('+91' + id))
    if check_parent.exists():
        kid_usn = check_parent.get().Usn
        kid = f'Parent of {kid_usn.Fname} {kid_usn.Lname}'
        staff = 'Parent'
        i = 2
    role = data.get().is_staff
    if role == True:
        i = 0
        staff = 'Teacher'
    b1 = box()
    b1.img = 'attend.jpg'
    b1.title = 'ATTENDANCE'
    b1.link = 'ATTENDANCE'
    b1.desc = at[i]

    b2 = box()
    b2.img = 'AICTE.png'
    b2.title = 'AICTE'
    b2.link = 'AICTE'
    b2.desc = ai[i]

    b3 = box()
    b3.img = 'ia.png'
    b3.title = 'Internal Marks'
    b3.link = 'Internal_Marks'
    b3.desc = ia[i]

    b4 = box()
    b4.img = 'vtu.png'
    b4.title = 'University Marks'
    b4.link = 'University_Marks'
    b4.desc = vtu[i]

    b = [b1, b2, b3, b4]

    d = {'b': b,
         'name': data.get().first_name + ' ' + data.get().last_name,
         'staff': staff,
         'id': id,
         'kid': kid
         }
    return d

def home(req):
    id = req.POST.get('id')
    req.session['id']=id
    pwd = req.POST.get('pwd')
    user=auth.authenticate(username=id, password=pwd)
    if user is not None:
        d=make_home(id)
        return render(req, 'home.html', d)
    else:
        messages.success(req, 'Invalid Credintials')
        return redirect('/')
def home_page(req):
    id = req.session['id']
    d=make_home(id)
    return render(req,'home.html',d)
@cache_control(no_cache=True, must_revalidate=True)
def logout(req):
    req.session.flush()
    return redirect('/')