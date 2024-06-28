create table songs(
	song_id serial primary key,
	song_name character varying(30) not null,
	genre character varying(30) default 'Not defined',
	price  numeric(4,2) check (price>=1.99),
	release_date date constraint date_check check (release_date between '1950-01-10' and '2024-06-28')
	
)
insert into  songs
(song_name,price,release_date)
values
('SQL song',0.99,'2022-01-07');

alter table songs
drop constraint songs_price_check;
alter table songs
add constraint songs_price_check check(price>=0.99)
select * from songs


