
from django.contrib import admin
from django.urls import path,include
from . import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path("",views.login,name="Log_IN"),
    path("home/",views.home,name="home"),
    path("homepage/",views.home_page,name="homepage"),
    path('home/logout',views.logout,name="logout"),
    path("home/Student/", include('Student.urls')),
    path("home/Teacher/", include('Teacher.urls')),
    path("home/Parent/", include('Parent.urls'))
]
