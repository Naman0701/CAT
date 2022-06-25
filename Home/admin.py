from django.contrib import admin
from .models import Student,Teacher,Teaches,Subject,Attendance,Mentor,AicteP,Class,Enroll,Internal,External,Parent
# Register your models here.

class AdminS(admin.ModelAdmin):
    list_display = ['Usn','Fname','Lname']
class AdminP(admin.ModelAdmin):
    list_display = ['Fname','Usn']
class AdminT(admin.ModelAdmin):
    list_display = ['designation','Fname','Lname']

class AdminSu(admin.ModelAdmin):
    list_display = ['Sub_code','Sub_name']

class AdminTs(admin.ModelAdmin):
    list_display = ['Class_id','Sub_code','Teacher_id']
class AdminCl(admin.ModelAdmin):
    list_display = ['Class_id']
class AdminEn(admin.ModelAdmin):
    list_display = ['Class_id','Usn']
class AdminIA(admin.ModelAdmin):
    list_display = ['Usn','Sub_code']
class AdminEX(admin.ModelAdmin):
    list_display = ['Usn','Sub_code']
class AdminA(admin.ModelAdmin):
    list_display = ['Date','Usn','Sub_code','Mark']
class AdminM(admin.ModelAdmin):
    list_display = ['mentor_d','Usn']
class AdminAicte(admin.ModelAdmin):
    list_display = ['Date','Usn']

admin.site.register(Student,AdminS)
admin.site.register(Parent,AdminP)
admin.site.register(Teacher,AdminT)
admin.site.register(Teaches,AdminTs)
admin.site.register(Subject,AdminSu)
admin.site.register(Attendance,AdminA)
admin.site.register(Class,AdminCl)
admin.site.register(Enroll,AdminEn)
admin.site.register(Internal,AdminIA)
admin.site.register(External,AdminEX)
admin.site.register(Mentor,AdminM)
admin.site.register(AicteP,AdminAicte)
