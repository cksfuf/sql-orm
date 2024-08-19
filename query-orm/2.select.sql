-- -- Movie.objects.all()
-- SELECT * FROM movies_movie;

-- -- User.objects.all()
-- SELECT * FROM movies_user;

-- -- Movie.objects.all().order_by('year')
-- SELECT * FROM movies_movie
-- ORDER BY year;

-- -- Movie.objects.all().order_by('-year')
-- SELECT * FROM movies_movie
-- ORDER BY year DESC;

-- -- Movie.objects.filter(year=2000)
-- SELECT * FROM movies_movie
-- WHERE year=2000;

-- -- User.objects.filter(age=30)
-- SELECT * FROM movies_user
-- WHERE age=30;

-- lt: <
-- lte: <=
-- gt: >
-- gte: >=
-- -- Movie.objects.filter(year__lt=2000) lt 는 ~ 전 2000년 전이라는 뜻
-- SELECT * FROM movies_movie
-- WHERE year < 2000;

-- -- Movie.objects.filter(year__gte=2000, year__lte=2010)
-- SELECT * FROM movies_movie
-- WHERE year >= 2000 AND year <= 2010;

-- -- Movie.objects.filter(Q(year__lte=2000) | Q(year__gte=2010))
-- SELECT * FROM movies_movie
-- WHERE year <= 2000 OR year >= 2010;

-- -- User.objects.exclude(age__gt=30)
-- SELECT * FROM movies_user
-- WHERE NOT age > 30;

-- -- Movie.objects.aggregate(Avg('year'))
-- SELECT AVG(year) FROM movies_movie;

-- -- Movie.objects.aggregate(Max('year'))
-- SELECT MAX(year) FROM movies_movie;


-- 1번 영화의 평균 평점
-- -- Score.objects.filter(movie_id=1).aggregate(Avg('value'))
-- SELECT AVG(value) FROM movies_score
-- WHERE movie_id=1;

-- -- Movie.objects.filter(title__contains='the')
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%the%';

-- -- Movie.objects.filter(title__startswith='the')
-- SELECT * FROM movies_movie
-- WHERE title LIKE 'the%';

-- -- 장고에서 사용하려면 정규표현식을 사용해야함
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%g__d%'

-- -- Movie.objects.filter(year__in=[2000, 2001])
-- SELECT * FROM movies_movie
-- WHERE year IN (2000, 2001);

-- -- Movie.objects.filter(year__range=[1999, 2000])
-- SELECT * FROM movies_movie
-- WHERE year BETWEEN 1990 AND 2000;

SELECT year, COUNT(*)
FROM movies_movie
WHERE year IN (2000, 2001);