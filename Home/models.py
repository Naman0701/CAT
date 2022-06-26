from django.db import models
from django.core.validators import MaxValueValidator,MinValueValidator,RegexValidator
from phonenumber_field.modelfields import PhoneNumberField

class Student(models.Model):
    Usn = models.CharField(max_length=10, primary_key=True)
    Fname = models.CharField(max_length=25)
    Lname = models.CharField(max_length=25)
    Phone = PhoneNumberField(null=False, blank=False, unique=True)
    Email = models.EmailField(max_length=30)
    Dept = models.CharField(max_length=50)
    Sem = models.IntegerField()
    Section = models.CharField(max_length=1)
    Scheme = models.IntegerField()

    def __str__(self):
        id = self.Usn + ' - ' + self.Fname + ' ' + self.Lname
        return id
class Parent(models.Model):
    Fname = models.CharField(max_length=25)
    Lname = models.CharField(max_length=25)
    Phone = PhoneNumberField(null=False, blank=False, unique=True)
    Email = models.EmailField(max_length=30)
    Usn = models.ForeignKey(Student, on_delete=models.CASCADE,primary_key=True)

    def __str__(self):
        id=f'{self.Usn} - {self.Usn}'
        return id

class Teacher(models.Model):
    Ssn = models.CharField(max_length=10, primary_key=True)
    Fname = models.CharField(max_length=25)
    Lname = models.CharField(max_length=25)
    Email = models.EmailField(max_length=30)
    Dept = models.CharField(max_length=50)
    desig_choice = (
        ("Mr", "Mr"),
        ("Mrs", "Mrs"),
        ("Ms", "Ms"),
        ("Dr", "Dr"),
    )
    designation = models.CharField(max_length=10, choices=desig_choice, default='Mr')
    role_choice = (
        ("Professor", "Professor"),
        ("Associate Professor", "Associate Professor"),
        ("Professor & Head", "Professor & Head"),
        ("Assistant Professor", "Assistant Professor"),
    )
    role = models.CharField(max_length=30, choices=role_choice, default='Assistant Professor')

    def __str__(self):
        id = self.designation + ' - ' + self.Fname + ' ' + self.Lname
        return id


class Subject(models.Model):
    Sub_code = models.CharField(max_length=10, primary_key=True)
    Sub_name = models.CharField(max_length=50)
    Dept = models.CharField(max_length=50)
    Sem = models.IntegerField()
    Credits = models.IntegerField()

    def __str__(self):
        id = self.Sub_code + ' - ' + self.Sub_name
        return id


class Class(models.Model):
    Class_id = models.CharField(max_length=10, primary_key=True)
    Department = models.CharField(max_length=20)
    Section = models.CharField(max_length=2)
    Sem = models.IntegerField()
    def __str__(self):
        return self.Class_id


class Enroll(models.Model):
    class Meta:
        unique_together=(('Class_id','Usn'),)
    Class_id = models.ForeignKey(Class, null=True, on_delete=models.SET_NULL)
    Usn = models.ForeignKey(Student, on_delete=models.CASCADE)

    def __str__(self):
        id = f'{self.Class_id}--{self.Usn}'
        return id


class Teaches(models.Model):
    class Meta:
        unique_together=(('Teacher_id','Sub_code','Class_id'),)
    Teacher_id = models.ForeignKey(Teacher, null=True, on_delete=models.SET_NULL)
    Sub_code = models.ForeignKey(Subject, null=True, on_delete=models.SET_NULL)
    Class_id = models.ForeignKey(Class, null=True, on_delete=models.SET_NULL)

    def __str__(self):
        id = f'{self.Class_id}-{self.Sub_code}-{self.Teacher_id}'
        return id


class Attendance(models.Model):
    Usn = models.ForeignKey(Student, on_delete=models.CASCADE)
    Sub_code = models.ForeignKey(Subject, on_delete=models.CASCADE)
    Date = models.DateField()
    Mark = models.BooleanField(default=True)

    def __str__(self):
        id = f'{self.Usn}-{self.Sub_code}-{self.Date}-{self.Mark}'
        return id


class Internal(models.Model):
    class Meta:
        unique_together=(('Sub_code','Usn'),)
    Usn = models.ForeignKey(Student, on_delete=models.CASCADE)
    Sub_code = models.ForeignKey(Subject, on_delete=models.CASCADE)
    marks=RegexValidator(regex=r'^(0?\d|[1-4]\d|50|AB)$',message="Either enter marks between 0 to 50 or AB")
    amarks=RegexValidator(regex=r'^([0-9]|10)$',message="Enter marks between 0 to 10")
    IA1=models.CharField(null=True,max_length=2,validators=[marks],blank=True)
    IA2=models.CharField(null=True,max_length=2,validators=[marks],blank=True)
    IA3=models.CharField(null=True,max_length=2,validators=[marks],blank=True)
    Assignment=models.CharField(null=True,max_length=2,validators=[amarks],blank=True)

    def __str__(self):
        return f'{self.Usn}-{self.Sub_code}'


class External(models.Model):
    class Meta:
        unique_together=(('Sub_code','Usn'),)
    Usn = models.ForeignKey(Student, on_delete=models.CASCADE)
    Sub_code = models.ForeignKey(Subject, on_delete=models.CASCADE)
    marks=RegexValidator(regex=r'^(0?\d|[1-9]\d|100)$',message="Enter marks between 0 to 100 ")
    emarks=RegexValidator(regex=r'^(0?\d|[1-5]\d|60|AB)$',message="Either enter marks between 0 to 60 or AB ")
    Exam=models.CharField(default=0,max_length=2,validators=[emarks])
    FinalIA=models.IntegerField(default=0,blank=True)
    Total=models.CharField(null=True,max_length=3,validators=[marks],blank=True)
    Grade=models.IntegerField(null=True,blank=True,validators=[MaxValueValidator(10),MinValueValidator(1)])
    def __str__(self):
        return f'{self.Usn}-{self.Sub_code}'


class Mentor(models.Model):
    Usn = models.ForeignKey(Student, on_delete=models.CASCADE,primary_key=True)
    mentor_d = models.ForeignKey(Teacher, null=True, on_delete=models.SET_NULL)
    Points = models.IntegerField()

    def __str__(self):
        id = f'{self.Usn}-{self.mentor_d}'
        return id


class AicteP(models.Model):
    Usn = models.ForeignKey(Student, on_delete=models.CASCADE)
    Date = models.DateField()
    Activity = models.CharField(max_length=50)
    Point = models.IntegerField(default=0)
