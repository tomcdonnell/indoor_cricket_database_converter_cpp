# Create tables for IndoorCricketDB database
# AUTHOR: Tom McDonnell


# Drop Tables

drop table opp_teams;
drop table matches;
drop table players;
drop table innings;
drop table overs;


# Create Tables

create table opp_teams
(
   opp_team_id   integer unsigned       not null auto_increment,
   opp_team_name character varying (64) not null,

   constraint pk_teams
      primary key (opp_team_id),
);

create table matches
(
   match_id        integer unsigned not null auto_increment,
   opp_team_id     integer unsigned not null,
   match_date      date             not null,
   match_time      time             not null,
   team_batted_1st boolean          not null,
 
   constraint pk_matches
      primary key (match_id),

   constraint u_matches
      unique (opp_team_id, match_date, match_time),

   constraint fk_matches_opp_team_id
      foreign key (opp_team_id)
      references opp_teams(opp_team_id),
);

create table players
(
   player_id   integer unsigned       not null auto_increment,
   first_name  character varying (32) not null,
   last_name   character varying (32) not null,

   constraint pk_players
      primary key (player_id),

   constraint u_players
      unique (first_name, last_name)
);

create table innings
(
   match_id    integer unsigned not null,
   player_id   integer unsigned not null,
   batting_pos integer unsigned not null,
   runs_scored integer          not null,

   constraint pk_innings
      primary key (match_id, player_id, batting_pos),

   constraint fk_innings_match_id
      foreign key (match_id)
      references matches(match_id),

   constraint fk_innings_player_id
      foreign key (player_id)
      references players(player_id),

   check (1 <= batting_pos and batting_pos <= 8)
);

create table overs
(
   match_id      integer unsigned not null,
   player_id     integer unsigned not null,
   over_no       integer unsigned not null,
   wickets_taken integer unsigned not null,
   runs_conceded integer          not null,

   constraint pk_overs
      primary key (match_id, player_id, over_no),

   constraint fk_overs_match_id
      foreign key (match_id)
      references matches(match_id),

   constraint fk_overs_player_id
      foreign key (player_id)
      references players(player_id),

   check (1 <= over_no and over_no <= 16)
);

create table seasons
(
   season_id   integer unsigned       not null auto_increment,
   season_name character varying (32) not null,
   start_date  date                   not null,
   finish_date date,

   constraint pk_seasons
      primary key (season_id),

   constraint u_seasons_dates
      unique (start_date, finish_date),

   constraint u_seasons_name
      unique (season_name)
);


# Create Views

create view innings_no_ids as
(
   select match_date, match_time, first_name, last_name, batting_pos, runs_scored
   from innings, matches, players
   where
   (
          innings.player_id = players.player_id
      and innings.match_id  = matches.match_id
   )
)
with check option;

create view overs_no_ids as
(
   select match_date, match_time, first_name, last_name, over_no, wickets_taken, runs_conceded
   from overs, matches, players
   where
   (
          overs.player_id = players.player_id
      and overs.match_id  = matches.match_id
   )
)
with check option;
