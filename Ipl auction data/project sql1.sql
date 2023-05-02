create database project22;
use project22;


select * from ipl2022_player_auction_list3;
 /* Listing the players who played in Ipl from australia  */
 select fullname from ipl2022_player_auction_list3 where country="australia";
 /* list the players whose age is between 25 and 30 */
 select fullname from ipl2022_player_auction_list3 WHERE Age>25 and age<30;
 /* list the players who played in IPL 2021 for Delhi capitals */
 select fullname from ipl2022_player_auction_list3 where 2021IPL="DC";
 /* list the country who are allrounders with Right hand bowling style */
 select Country from ipl2022_player_auction_list3 where specialism="ALL-ROUNDER" and bowlingstyle="RIGHT ARM Off Spin";
 /*  list the players whose price is greater than avg price */
 select fullname from  ipl2022_player_auction_list3  where AM_P_IN_LAKS>(select avg(AM_P_IN_LAKS) from  ipl2022_player_auction_list3)order by AM_P_IN_LAKS desc;
 /* Most valueble player */
  select fullname from  ipl2022_player_auction_list3  where AM_P_IN_LAKS=(select max(AM_P_IN_LAKS) from  ipl2022_player_auction_list3)
  order by AM_P_IN_LAKS limit 1;
  /* list the number of players from other countries */
select country,count(*) from ipl2022_player_auction_list3 where country<>"India" group by country ;
/* list the players of india */
select fullname from ipl2022_player_auction_list3 where country="India";
/* Number of batsmans from india*/
select specialism,count(*) from ipl2022_player_auction_list3 where country="India" and specialism="BATSMAN";
/* player who have the most t20 caps */
select fullname from ipl2022_player_auction_list3 where T20caps=(select max(T20caps) from ipl2022_player_auction_list3)order by T20caps desc limit 1;

/* Indian players who played for RCB  2021 */
select fullname from ipl2022_player_auction_list3 where 2021Team="RCB" AND country="India";
/* list of players who played in Ashwin's team in 2021 IPL */
select fullname from ipl2022_player_auction_list3 where 2021Team in(select 2021Team from ipl2022_player_auction_list3 where fullname="R Ashwin");


 
 
 
 
 