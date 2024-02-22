use Mondial;
---------------------------------------------------------------
--zadanie 1
-- Wyświetl ile jezior jest w Albanii. Wyświetl kod kraju oraz liczbę jezior 
--(wynik w postaci: AL 3 jeziora).Dopisz słowo "jeziora" na końcu.

select * from geo_lake;


select country, lake from geo_lake where country = 'al';

select  'AL - ' + cast(count(lake) as varchar) + ' jeziora' as liczba from geo_lake where country = 'al';

---------------------------------------------------------------

--zadanie 2
--Wypisz kody krajów i nazwy ich stolic, z wyjątkiem tych, 
--których populacja w stolicach jest wieksza od 7 milionów .  

select * from country;
select * from city;

select capital, code from country
intersect 
select name , country from city 
where population < 7000000 and population is not null
order by Code;

 
---------------------------------------------------------------

--zadanie 3
--podaj kody krajów które zaczynają się na literę A i leżą poza Europą
select * from country;
select * from encompasses;

select * from country

select code from country where code like 'a%'
except
select  country from encompasses where continent = 'europe';


---------------------------------------------------------------
--zadanie 4
--Wypisz miasta, które należą do państw o symbolu zaczynającym się na literę D 
--z wyjątkiem tych, których symbol na końcu zawiera literę M oraz druga literę K
select * from country;

select * from country where name like 'D%';

---------------------------------------------------------------
--zadanie 5
--Wypisz kod kraju oraz sumę miast w danym kraju.  
--Dopisz na końcu sumowania " liczba miast".

select * from city;

select count(name) as liczba_miast,sum(Population) as populacja_miast,avg(population) from city where Population is not null group by Country; 

select count(name) as liczba_miast from city;
---------------------------------------------------------------
--zadanie 6
--Wyświetl nazwę państwa, nazwy wysp oraz powierzchnię wysp dla kraju Hiszpania (Spain).

select * from country;
select * from geo_island;


select island,country from geo_island where country = 'E';



