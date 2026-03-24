##Fifa Project
select * from players;
select * from teams;
select * from totalgroups;

#1 WRITE a sql query to show all the UNIQUE team names
select distinct team from teams;

#2 Write a SQL query to show name of team which has rank 1 from group 7
select * from teams;
select * from totalgroups;

select 
   teams.team,
   totalgroups.groupss,
   totalgroups.rank
from teams inner join totalgroups
on teams.team = totalgroups.teams
where totalgroups.groupss = '7' and totalgroups.rank = '1';

select teams, groupss, `rank` 
from totalgroups where groupss = '7' and `rank` = '1';


#3 WRITE a sql query to show count of all team
select count(team) from teams;

#4 Write a SQL query to show matches_played by each team
select * from teams;
select * from totalgroups;

select 
    teams.team,
    totalgroups.matches_played
from teams inner join totalgroups
on teams.team = totalgroups.teams;

#5 Write a SQL query to show team, percent of wins with respect to matches_played by each team 
#   and name the resulting column as wins_percent for percentage (Value/respecttovslue)*100
select * from teams;
select * from totalgroups;

select 
    teams.team,
    round(totalgroups.wins/totalgroups.matches_played * 100 , 2) Wins_percent
from teams inner join totalgroups
on teams.team = totalgroups.teams;

#6Write a SQL query to show which team has maximum goals_scored and how much
select * from teams;
select * from totalgroups;

select 
   teams.team,
   max(totalgroups.goals_scored) Maximum_goal_scored
from teams inner join totalgroups
on teams.team = totalgroups.teams
group by teams.team
order by Maximum_goal_scored desc limit 1;

#7 Write a SQL query to show percent of draws with respect to matches_played round of to 2 digits by each team
select * from teams;
select * from totalgroups;

select 
     teams.team,
     round(totalgroups.draws/totalgroups.matches_played *100 ,2) Draws_percent
from teams inner join totalgroups     
on teams.team = totalgroups.teams;


#8 Write a SQL query to show which team has minimum goals_scored and how much
select * from teams;
select * from totalgroups;

select 
     teams.team,
     min(totalgroups.goals_scored) Minimum_goal_scored
from teams inner join totalgroups
on teams.team = totalgroups.teams
group by teams.team
order by min(totalgroups.goals_scored)
limit 1;

#9 Write a SQL query to show percent of losses with respect to matches_played by each team in ascending order by losses 
#  and name the resulting column as losses_percent
select * from teams;
select * from totalgroups;
  
select
  teams.team,
  round(totalgroups.losses/totalgroups.matches_played*100 ,2) Losses_percentage
from teams inner join totalgroups
on teams.team = totalgroups.teams
order by Losses_percentage;

#10 Write a SQL query to show the average goal_difference
select avg(goal_difference) from totalgroups;

#11 Write a SQL query to show name of the team where points are 0
select * from teams;
select teams,points from totalgroups where points = '0';

select 
   teams.team,
   totalgroups.points Points
from teams inner join totalgroups
where totalgroups.points = '0';   

#12 Write a SQL query to show all data where expected_goal_scored is less than exp_goal_conceded
select * from totalgroups where expected_goal_scored < exp_goal_conceded;
select teams,expected_goal_scored,exp_goal_conceded from totalgroups where expected_goal_scored < exp_goal_conceded;

#13 Write a SQL query to show data where exp_goal_difference is in between -0.5 and 0.5
select * from totalgroups where exp_goal_difference between -0.5 and 0.5;

#14 Write a SQL query to show all data in ascending order by exp_goal_difference_per_90
select * from totalgroups order by exp_goal_difference_per_90 asc;

#15 Write a SQL query to show team which has maximum number of players_used
select team, max(players_used) Max_Player from teams group by team order by Max_Player desc limit 1;

#16Write a SQL query to show each team name and avg_age in ascending order by avg_age
select team, avg_age from teams order by avg_age asc;

#17 WRITE a sql queryto show average possession of teams
select team, avg(possession) from teams group by team;

#18 Write a SQL query to show team which has played atleast 5 games
select team, games from teams where games = '5'

select teams,matches_played from totalgroups where matches_played = '5';

#19 Write a SQL query to show all data for which minutes is greater than 600
select * from teams where minutes > '600';

#20 Write a SQL query to show team, goals, assists in ascending order by goals
select team, goals, assists from teams order by goals asc;

#21 Write a SQL query to show team, pens_made, pens_att in descending order by pens_made
select team, pens_made, pens_att from teams order by pens_made desc;

#22 Write a SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow
select team, cards_yellow, cards_red from teams where cards_red = '1' order by cards_yellow asc;

#23 Write a SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90
select team, goals_per90, assists_per90, goals_assists_per90 from teams order by goals_assists_per90 desc;

#24 Write a SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order 
select team, shots, shots_on_target,shots_on_target_pct from teams where shots_on_target_pct < 30 order by shots_on_target_pct asc;

#25 Write a SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium
select team, shots_per90, shots_on_target_per90 from teams where team = 'Belgium';

#26 Write a SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance
select team, goals_per_shot, goals_per_shot_on_target, average_shot_distance from teams order by average_shot_distance desc;

#27 Write a SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500
select team, errors, touches from teams where errors = '0' and touches < 1500;

#28 Write a SQL query to show team, fouls which has maximum number of fouls
select team, MAX(fouls) Fouls from teams group by team order by Fouls desc limit 1;

#29 Write a SQL query to show team, offisdes which has offsides less than 10 or greater than 20
select team, offsides from teams where offsides < 10 or offsides > 20;

#30 Write a SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct
select team, aerials_won, aerials_lost, aerials_won_pct  from teams order by aerials_won_pct desc;

#31WRITE a sql query to show number of teams each group has
select groupss, count(teams) Total_teams from totalgroups group by groupss;

#32 Write a SQL query to show team names group 6 has
select teams, groupss from totalgroups where groupss = '6';
select groupss, teams from totalgroups where groupss = '6';

#33 Write a SQL query to show Australia belongs to which group
select teams, groupss from totalgroups where teams = 'Australia';

#34 Write a SQL query to show group, average wins by each group
select groupss, avg(wins) from totalgroups group by groupss; 

#35 Write a SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored
select groupss, max(expected_goal_scored) Max_goalscored from totalgroups group by groupss order by Max_goalscored asc;

#36 Write a SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded
select groupss, min(exp_goal_conceded) Minimum_goalconceded from totalgroups group by groupss order by minimum_goalconceded desc;

#37 Write a SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90
select groupss, avg(exp_goal_difference_per_90) AVG_goaldifference_per90 from totalgroups group by groupss order by AVG_goaldifference_per90 asc;

#38 WRITE a query to show which team has equal number of goals_scored and goals_against
select teams, goals_scored, goals_against from totalgroups where goals_scored =  goals_against;

#39 WRITE a query to show which team has maximum players_used
select team, max(players_used) Max_Playerused from teams group by team order by Max_Playerused desc limit 1; 

#40 WRITE a query to show team, players_used, avg_age, games, minutes where minutes less than 500 and greater than 200
select team, players_used, avg_age, games, minutes from teams where minutes < 500 and minutes > 200 ;
select team, players_used, avg_age, games, minutes from teams where minutes < 500;
select team, players_used, avg_age, games, minutes from teams where minutes > 200;

#41 WRITE a query to show all data of group_stats in ascending order BY points
select * from totalgroups order by points asc;

#42 WRITE a query to show ALL UNIQUE team in ascending order by team
select distinct teams from totalgroups order by teams asc;

#43 WRITE a query to show average avg_age of each group and arrange it in descending order by avg_age.
select * from totalgroups;
select * from teams;

select distinct
    totalgroups.groupss Groupss,
    avg(teams.avg_age) AVG_age
from totalgroups inner join teams
on teams.team = totalgroups.teams
group by Groupss
order by AVG_age desc;

#44 WRITE a query to show sum of fouls for each group and arrange it in ascending order by fouls.
select * from totalgroups;
select * from teams;

select 
    totalgroups.groupss Groupss,
    sum(teams.fouls) Total_Fouls
from teams inner join totalgroups
on teams.team = totalgroups.teams
group by Groupss
order by Total_Fouls asc;

#45 WRITE a query to show total number of games for each group and arrange it in descending order by games.
select * from teams;
select * from totalgroups;

select
     totalgroups.groupss Groupss,
     sum(teams.games) Total_Games
from teams inner join totalgroups
on teams.team = totalgroups.teams
group by Groupss
order by Total_Games desc;

#46 WRITE a query to show total number of players_used for each group and arrange it in ascending order by players_used.
select * from totalgroups;
select * from teams;

select
   totalgroups.groupss Groupss,
   count(teams.players_used) Players_used
from teams inner join totalgroups
group by Groupss
order by Players_used asc;

#48 WRITE a query to show total number of offsides for each group and arrange it in ascending order by offsides.
select 
     totalgroups.groupss Each_Groups,
      sum(teams.offsides) Total_offside
from teams inner join totalgroups
on teams.team = totalgroups.teams
group by Each_Groups
order by Total_offside asc;

#49 WRITE a query to show average passes_pct for each group and arrange it in descending order by passes_pct.
select * from teams;
select * from totalgroups;
select
     totalgroups.groupss Each_Group,
     round(avg(teams.passes_pct),2) AVG_Pct
from teams inner join totalgroups
on teams.team = totalgroups.teams
group by Each_Group
order by AVG_Pct desc;

#50 WRITE a query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.
select 
     totalgroups.groupss Each_group,
     round(avg(teams.goals_per90),2) AVG_Goalsper90
from teams inner join totalgroups
on teams.team = totalgroups.teams 
group by Each_group
order by AVG_Goalsper90 asc;






