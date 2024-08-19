from django.db import models

# Create your models here.

# 배우 정보(이름, 나이)
class Actor(models.Model):
    name = models.CharField(max_length=500)
    age = models.IntegerField()


# 영화정보(제목, 년도, 배우들)
class Movie(models.Model):
    title = models.CharField(max_length=500)
    year = models.IntegerField()
    actors = models.ManyToManyField(Actor, related_name='movies') # ManyToManyField(M:N 관계)


# 영화 장르(이름, 무비)
class Category(models.Model):
    name = models.CharField(max_length=500)
    movies = models.ManyToManyField(Movie, related_name='categories')


# 사이트를 사용하는 사람(사람이름, 국가, 이메일, 나이)
class User(models.Model):
    name = models.CharField(max_length=500)
    country = models.CharField(max_length=500)
    email = models.CharField(max_length=500)
    age = models.IntegerField()


# 영화 점수
class Score(models.Model):
    content = models.CharField(max_length=500)
    value = models.IntegerField()
    movie = models.ForeignKey(Movie, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)