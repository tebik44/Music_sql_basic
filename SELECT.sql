--название и год выхода альбомов, вышедших в 2018 году
select A.album_name, A.production_year 
from albums A
where A.production_year = '2018-01-01';

--название и продолжительность самого длительного трека
select t.name_
from tracks t
where t.length_ = (select Max(t.length_) 
				   from tracks t)

--название треков, продолжительность которых не менее 3,5 мин
select t.name_, t.length_
from tracks t
where t.length_ >= '00:03:30'

--названия сборников, вышедших в период с 2018 по 2020 год включительно
select c.name_
from collection_ c
where c.production_year >= '2018-01-01'
	and c.production_year <= '2020-01-01'
	
--исполнители, чье имя состоит из 1 слова
select *
from performer p
where p.performer_name not like '% %' 
	and p.performer_name not like '%-%'
	
select *
from performer pv --она не работает как надо
where p.performer_name not in ('% %', '%-%')
	--КАК СДЕЛАТЬ БОЛЕЕ СОКРАЩЕННУЮ ФОРМУ ЗАПИСИ?(ПРИМЕР: p.performer_name not like ('% %', '%-%'))?

--название треков, которые содержат слово "мой"/"my"
select t.name_
from tracks t 
where t.name_ like '%My%' or t.name_ like '%my%'
	or t.name_ like '%Мой%' or t.name_ like '%мой%'