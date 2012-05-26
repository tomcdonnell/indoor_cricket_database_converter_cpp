#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Pissed 'n Broke", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Pissed 'n Broke";

insert into matches values (null, @teamID, @oppTeamID, '2004-4-22', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-4-22' 
                   and   match_time = '19:40:00';

insert into players values (null, "Mick", "<last_name>"     );
select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 10);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, -2);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, -4);

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 16);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 8);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 9);

insert into players values (null, "Adam", "Piric"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 21);

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 15);


select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 11);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 10);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 7);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 5);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 11);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 12);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 1);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 0);

select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 4);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 8);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 11);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 8);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 3);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 14, 4, -15);

select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 8);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 8);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Team Tena", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Team Tena";

insert into matches values (null, @teamID, @oppTeamID, '2004-4-28', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-4-28' 
                   and   match_time = '19:40:00';

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 19);

insert into players values (null, "Mick", "<last_name>"     );
select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 21);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 15);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 0);

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 5);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 22);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 28);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 0);


select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, 10);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 12);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 23);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, -2);

select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 5);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 17);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 3);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 16);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 11);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 9);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 5);

select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 6);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 4);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 11);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 9);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 12);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Agguts", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Agguts";

insert into matches values (null, @teamID, @oppTeamID, '2004-5-5', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-5-5' 
                   and   match_time = '19:40:00';

insert into players values (null, "Adam", "Piric"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 13);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 19);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 2);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 16);

insert into players values (null, "Luke", "<last_name>"     );
select @playerID := player_id from players where first_name = "Luke" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 9);

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 20);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 5);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 10);


select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 9);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 13);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 3);

select @playerID := player_id from players where first_name = "Luke" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 4, 3, -11);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 4);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 6, 2, -7);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, -1);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 9);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 9, 2, -1);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 4);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 11, 2, -4);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 8);

select @playerID := player_id from players where first_name = "Luke" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 4);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 9);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 15, 1, 13);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 16, 2, 3);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Benda Rover", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Benda Rover";

insert into matches values (null, @teamID, @oppTeamID, '2004-5-12', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-5-12' 
                   and   match_time = '19:40:00';

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 3);

insert into players values (null, "Mick", "<last_name>"     );
select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 14);

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, -12);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 13);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 12);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 17);

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -8);

insert into players values (null, "Adam", "Piric"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 14);


select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 21);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 14);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 15);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 21);

select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 8);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 6);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 7, 3, -6);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 5);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 5);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 11);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 3);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 2, -5);

select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 3);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 14);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 8);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 15);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "3kz", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "3kz";

insert into matches values (null, @teamID, @oppTeamID, '2004-5-19', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-5-19' 
                   and   match_time = '19:40:00';

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, -1);

insert into players values (null, "Mick", "<last_name>"     );
select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 16);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 11);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 13);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 9);

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, -1);

insert into players values (null, "Adam", "Piric"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -5);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, -4);


select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, 10);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 13);

select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 5);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 6);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 0);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 2, -6);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 17);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 8, 3, -8);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 5);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 10);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 11);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 8);

select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 6);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 7);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 15, 2, -6);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 9);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "J. A. F. I. C. S.", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "J. A. F. I. C. S.";

insert into matches values (null, @teamID, @oppTeamID, '2004-5-26', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-5-26' 
                   and   match_time = '19:40:00';

insert into players values (null, "Mick", "<last_name>"     );
select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 16);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 5);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 1);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 11);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 17);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 12);

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 12);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 9);


select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 12);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 2);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 4);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 8);

select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 9);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 16);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 10);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 4);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 4);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 8);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 14);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 1);

select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 9);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 5);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 15, 2, -2);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 16);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Eight Nuffs", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Eight Nuffs";

insert into matches values (null, @teamID, @oppTeamID, '2004-5-30', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-5-30' 
                   and   match_time = '19:40:00';

insert into players values (null, "Mick", "<last_name>"     );
select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 20);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 2);

insert into players values (null, "Adam", "Piric"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 29);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 29);

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 24);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, -2);

insert into players values (null, "None", "<last_name>"     );
select @playerID := player_id from players where first_name = "None" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 0);

insert into players values (null, "None", "<last_name>"     );
select @playerID := player_id from players where first_name = "None" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 0);


select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, 10);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 0);

select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 12);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 4);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 6);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 0);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 2);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 10);

select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 4);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 10, 2, -4);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 7);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 12, 2, -2);

select @playerID := player_id from players where first_name = "None" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 0);

select @playerID := player_id from players where first_name = "None" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 0);

select @playerID := player_id from players where first_name = "None" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 0);

select @playerID := player_id from players where first_name = "None" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 0);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "3kz", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "3kz";

insert into matches values (null, @teamID, @oppTeamID, '2004-6-9', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-6-9' 
                   and   match_time = '19:40:00';

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 17);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, -1);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 24);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 11);

insert into players values (null, "Adam", "Piric"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 6);

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 13);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 7);

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 17);


select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 8);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 2, 2, 2);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 7);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 11);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 9);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 10);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 12);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 8, 2, -5);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 13);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 12);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 13);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 7);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 13);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 12);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 18);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 16);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Benda Rover", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Benda Rover";

insert into matches values (null, @teamID, @oppTeamID, '2004-8-31', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-8-31' 
                   and   match_time = '19:40:00';

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, -6);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 16);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 28);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 4);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, -18);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 20);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 2);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, -10);


select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 14);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 12);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 12);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 10);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 11);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 6, 2, -5);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 14);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 13);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 9, 2, -7);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 12);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 15);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 9);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 13);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 3);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 19);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 16, 2, 8);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Hot 2 Frot", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Hot 2 Frot";

insert into matches values (null, @teamID, @oppTeamID, '2004-9-8', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-9-8' 
                   and   match_time = '19:40:00';

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 8);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 5);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, -4);

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 9);

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 9);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, -8);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 12);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, -5);


select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 10);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 6);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 11);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 12);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 3);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 4);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 2);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 10);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 8);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 9);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 10);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 5);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 12);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 17);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 11);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 9);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "C. U. B.", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "C. U. B.";

insert into matches values (null, @teamID, @oppTeamID, '2004-9-15', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-9-15' 
                   and   match_time = '19:40:00';

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 17);

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 17);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 22);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, -4);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 20);

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 11);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 7);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 9);


select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 11);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 17);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 4);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 20);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 10);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 1);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 2, 5);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 5);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 10);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 3);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 8);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 9);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 5);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 13);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 15, 1, 4);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 12);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Agguts", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Agguts";

insert into matches values (null, @teamID, @oppTeamID, '2004-9-22', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-9-22' 
                   and   match_time = '19:40:00';

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 2);

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 6);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 7);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 14);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 10);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 12);

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 19);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 8);


select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 9);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, -2);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 5);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 12);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 8);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 6);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 8);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 22);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 2, -4);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 8);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 11, 2, -3);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 2);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 7);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 9);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 13);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 8);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "J. A. F. I. C. S.", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "J. A. F. I. C. S.";

insert into matches values (null, @teamID, @oppTeamID, '2004-10-6', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-10-6' 
                   and   match_time = '19:40:00';

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 9);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 8);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 0);

insert into players values (null, "Mick", "<last_name>"     );
select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 11);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 7);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 11);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 6);

insert into players values (null, "Rusty", "<last_name>"     );
select @playerID := player_id from players where first_name = "Rusty" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, -5);


select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 6);

select @playerID := player_id from players where first_name = "Rusty" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 4);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 4);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 9);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 12);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 11);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 9);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 6);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 11);

select @playerID := player_id from players where first_name = "Rusty" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 11);

select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 7);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 9);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 13);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 17);

select @playerID := player_id from players where first_name = "Mick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 8);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 9);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "3kz", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "3kz";

insert into matches values (null, @teamID, @oppTeamID, '2004-10-14', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-10-14' 
                   and   match_time = '19:40:00';

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 14);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 6);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 8);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 12);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 16);

insert into players values (null, "Sean", "Cunningham"     );
select @playerID := player_id from players where first_name = "Sean" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 13);

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 3);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 7);


select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 16);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, -2);

select @playerID := player_id from players where first_name = "Sean" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 5);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 8);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 17);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 11);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 13);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 6);

select @playerID := player_id from players where first_name = "Sean" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 9);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 14);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 7);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 13);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 2);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 11);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 15, 2, -6);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 16, 2, 1);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Space Monkeys", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Space Monkeys";

insert into matches values (null, @teamID, @oppTeamID, '2004-10-20', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-10-20' 
                   and   match_time = '19:40:00';

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, -2);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 0);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 3);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 9);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 0);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 1);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 20);

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 4);


select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 5);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 1);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 8);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 4, 2, -1);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 9);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 2, -3);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 3);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 5);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 12);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 6);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 7);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 1);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 1);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 9);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 15, 2, 4);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, -2);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Toyo Inkredibles", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Toyo Inkredibles";

insert into matches values (null, @teamID, @oppTeamID, '2004-10-27', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-10-27' 
                   and   match_time = '19:40:00';

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 19);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 21);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 26);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 3);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 16);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 13);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 10);

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 3);


select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 9);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 11);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 8);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 4);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 12);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 7);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 14);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 4);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 2);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 5);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 10);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 6);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 13, 2, -5);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 8);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 9);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, 5);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "White Windies Resurrection", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "White Windies Resurrection";

insert into matches values (null, @teamID, @oppTeamID, '2004-11-3', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-11-3' 
                   and   match_time = '19:40:00';

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 13);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 16);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 0);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 23);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 10);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, -3);

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -9);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 12);


select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 1, 2, -3);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 14);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 3, 2, -5);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 12);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 6);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 1);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 3);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 2);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 0);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 10);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 11);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 3, -7);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 12);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 2);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 15, 1, -1);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, 11);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Eight Nuffs", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Eight Nuffs";

insert into matches values (null, @teamID, @oppTeamID, '2004-11-10', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-11-10' 
                   and   match_time = '19:40:00';

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 22);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 11);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, -4);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 13);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 11);

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 15);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 8);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 8);


select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, 0);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 9);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 12);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 4);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 3);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 1);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 0);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 0);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 10);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 10);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 2);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 16);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 1);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 2);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 12);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, 3);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Head Hunters", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Head Hunters";

insert into matches values (null, @teamID, @oppTeamID, '2004-11-17', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-11-17' 
                   and   match_time = '19:40:00';

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 9);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 6);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 20);

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 12);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 15);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 7);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 19);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 18);


select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 9);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 2);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 5);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 4, 2, -1);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 12);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 1);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 9);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 7);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 0);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, -3);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 11, 2, -4);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 12, 2, -8);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 3);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 14, 2, -6);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 15, 1, 3);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 16, 3, -11);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Purple Sevens", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Purple Sevens";

insert into matches values (null, @teamID, @oppTeamID, '2004-11-24', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-11-24' 
                   and   match_time = '19:40:00';

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 16);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 25);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 3);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 13);

insert into players values (null, "Damien", "<last_name>"     );
select @playerID := player_id from players where first_name = "Damien" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 24);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 27);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 13);

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 16);


select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, 1);

select @playerID := player_id from players where first_name = "Damien" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 5);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 12);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 16);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 9);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 6, 2, -4);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 18);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 8, 2, -5);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 1);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 1);

select @playerID := player_id from players where first_name = "Damien" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 11, 2, -5);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 10);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 8);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 6);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 14);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, 1);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Team Tena", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Team Tena";

insert into matches values (null, @teamID, @oppTeamID, '2004-11-29', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-11-29' 
                   and   match_time = '19:40:00';

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 10);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 2);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 0);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 17);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 5);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 20);

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -5);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 7);


select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 1, 2, -5);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 7);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 6);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 8);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 5, 3, -8);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 11);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 2, -4);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 23);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 9, 2, -2);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 10, 2, 4);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 10);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 8);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 13);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 4);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 6);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 6);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Pyros", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Pyros";

insert into matches values (null, @teamID, @oppTeamID, '2004-12-1', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-12-1' 
                   and   match_time = '19:40:00';

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 9);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 9);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 26);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, -1);

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 4);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 14);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 13);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 5);


select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 11);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 5);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 10);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 7);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 5, 2, -7);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 9);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 9);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 2, -5);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 0);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 5);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 11, 2, -7);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 7);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 13, 2, -1);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 8);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 18);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 16, 2, -3);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Here For A Good Time", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Here For A Good Time";

insert into matches values (null, @teamID, @oppTeamID, '2004-12-8', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-12-8' 
                   and   match_time = '19:40:00';

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 22);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 20);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 13);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 7);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 21);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 21);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 26);

insert into players values (null, "Adam", "Cunningham"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 17);


select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, 1);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, -3);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 14);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 0);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 5, 2, 7);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 6, 2, -2);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 7, 3, -13);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 6);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 9, 2, -7);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 5);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 3);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 12);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 9);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 14, 3, -12);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 10);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 16, 3, -12);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Eight Nuffs", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Eight Nuffs";

insert into matches values (null, @teamID, @oppTeamID, '2004-12-15', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-12-15' 
                   and   match_time = '19:40:00';

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 15);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 17);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 16);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 24);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 14);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, -11);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 9);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 6);


select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, 2);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 5);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 12);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 4, 2, -5);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 5, 2, 2);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 2);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 15);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 7);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 7);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 13);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 11);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 10);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 13, 2, -4);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 14, 2, -3);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 15, 1, 3);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 16, 2, 12);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Head Hunters", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Head Hunters";

insert into matches values (null, @teamID, @oppTeamID, '2004-12-22', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2004-12-22' 
                   and   match_time = '19:40:00';

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 7);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 12);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 10);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 11);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 14);

insert into players values (null, "Luke", "<last_name>"     );
select @playerID := player_id from players where first_name = "Luke" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 20);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 18);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 6);


select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 1, 2, -2);

select @playerID := player_id from players where first_name = "Luke" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 8);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 6);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 5);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 5, 2, 2);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 22);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 8);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 10);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 10);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 6);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 7);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 2, 8);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 4);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 8);

select @playerID := player_id from players where first_name = "Luke" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 15, 3, -13);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 11);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Purple Sevens", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Purple Sevens";

insert into matches values (null, @teamID, @oppTeamID, '2005-1-5', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-1-5' 
                   and   match_time = '19:40:00';

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 17);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 6);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 24);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 10);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 9);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 8);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 25);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 22);


select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 13);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 10);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 13);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 6);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 1);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, -3);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, -1);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 2);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 7);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 6);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 11, 2, -5);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, -2);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 13, 2, -3);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 9);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 15, 2, 0);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 13);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Pyros", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Pyros";

insert into matches values (null, @teamID, @oppTeamID, '2005-1-12', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-1-12' 
                   and   match_time = '19:40:00';

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 6);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 8);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 6);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 16);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 17);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 3);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -6);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 0);


select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 1, 2, -6);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 7);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 16);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 4, 3, -9);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 12);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 4);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 7, 3, -11);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 5);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 17);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 14);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 1);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 12, 2, -4);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 9);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 15);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 15, 1, 9);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 12);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Dream Team", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Dream Team";

insert into matches values (null, @teamID, @oppTeamID, '2005-1-19', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-1-19' 
                   and   match_time = '19:40:00';

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 6);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 13);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 10);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 11);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 13);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 4);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 0);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 13);


select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 11);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 2);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 7);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 4);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 6);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 7);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 7);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 3, -14);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 0);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 5);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 16);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 7);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 5);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 3);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 15, 1, 3);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, 0);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Purple Cobras", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Purple Cobras";

insert into matches values (null, @teamID, @oppTeamID, '2005-1-26', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-1-26' 
                   and   match_time = '19:40:00';

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 16);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 5);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 14);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 0);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 21);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 3);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -6);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 10);


select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 1, 2, -3);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 7);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 7);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 4, 2, -5);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 5, 2, -3);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 2, -3);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, -1);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 9);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 7);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 0);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 11, 2, 2);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 12, 3, -10);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 0);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 11);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 15, 3, -7);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 16, 2, -2);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Eight Nuffs", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Eight Nuffs";

insert into matches values (null, @teamID, @oppTeamID, '2005-2-2', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-2-2' 
                   and   match_time = '19:40:00';

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 19);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 25);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 17);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 11);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 6);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, -5);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 20);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 3);


select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, -1);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 3);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 5);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 1);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 1);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 8);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 2, -4);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 9);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 9, 2, -3);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 9);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 12);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 9);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, -2);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 6);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 15, 2, -2);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, 15);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Pyros", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Pyros";

insert into matches values (null, @teamID, @oppTeamID, '2005-2-6', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-2-6' 
                   and   match_time = '19:40:00';

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 17);

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 7);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, -5);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, -2);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 9);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 3);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -3);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 18);


select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, 2);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 9);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 2);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 19);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 5, 2, 3);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 11);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 7, 3, -5);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 5);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 9, 2, -5);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 10, 2, 5);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 11, 2, -5);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 13);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 12);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 0);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 8);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, 3);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Purple Cobras", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Purple Cobras";

insert into matches values (null, @teamID, @oppTeamID, '2005-2-16', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-2-16' 
                   and   match_time = '19:40:00';

insert into players values (null, "Max", "Morrison"     );
select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 15);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 4);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 3);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 1);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 23);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 4);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 38);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, -11);


select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 14);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 19);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 9);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 3);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 14);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 9);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 10);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 12);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 0);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 5);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 11, 2, -7);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 17);

select @playerID := player_id from players where first_name = "Max" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 5);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 2);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 10);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 6);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Clarky's Team", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Clarky's Team";

insert into matches values (null, @teamID, @oppTeamID, '2005-2-23', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-2-23' 
                   and   match_time = '19:40:00';

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 22);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 19);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 7);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 30);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 18);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 11);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 9);

insert into players values (null, "Adam", "Piric"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 35);


select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, 2);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 9);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 14);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 5);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 5, 2, -4);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 1);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 2, -3);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 5);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 2, -5);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 9);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 7);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 12, 2, -6);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 7);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 9);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 15);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 7);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Team Tena", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Team Tena";

insert into matches values (null, @teamID, @oppTeamID, '2005-3-2', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-3-2' 
                   and   match_time = '19:40:00';

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 18);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 24);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 12);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 17);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 7);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, -2);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 15);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, -7);


select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, 1);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 11);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 9);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 17);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 10);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, -1);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 5);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 8);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 6);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 6);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 11, 3, -7);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 18);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 13, 3, -8);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 2);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 12);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 11);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Hit And Hope", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Hit And Hope";

insert into matches values (null, @teamID, @oppTeamID, '2005-3-8', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-3-8' 
                   and   match_time = '19:40:00';

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 36);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 22);

insert into players values (null, "Sean", "Cunningham"     );
select @playerID := player_id from players where first_name = "Sean" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 6);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, -8);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 31);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 27);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -1);

insert into players values (null, "Sean", "Cunningham"     );
select @playerID := player_id from players where first_name = "Sean" and last_name = "Cunningham";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 10);


select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, -1);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 4);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 0);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 8);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 2);

select @playerID := player_id from players where first_name = "Sean" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 6, 2, -5);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 10);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 13);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 9);

select @playerID := player_id from players where first_name = "Sean" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 4);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 16);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 6);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 13);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 6);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 7);

select @playerID := player_id from players where first_name = "Sean" and last_name = "Cunningham";
insert into overs values (@matchID, @teamID, @playerID, 16, 2, -4);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Pyros", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Pyros";

insert into matches values (null, @teamID, @oppTeamID, '2005-3-16', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-3-16' 
                   and   match_time = '19:40:00';

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 11);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, -12);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 21);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 6);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 12);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, -3);

insert into players values (null, "Adam", "Piric"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 12);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 16);


select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 9);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 12);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 16);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 4, 2, 1);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 0);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 10);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 5);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 10);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 4);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 9);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 13);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 13);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 7);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 0);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 15, 2, -5);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 16, 2, -5);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "J. A. F. I. C. S.", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "J. A. F. I. C. S.";

insert into matches values (null, @teamID, @oppTeamID, '2005-3-23', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-3-23' 
                   and   match_time = '19:40:00';

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 8);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 10);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 20);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 18);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, -6);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 14);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 8);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 4);


select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 5);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 8);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 9);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 6);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 10);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 9);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 6);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 12);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 4);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 4);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 7);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 8);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 1);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 3);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 15, 2, -6);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, 1);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Agguts", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Agguts";

insert into matches values (null, @teamID, @oppTeamID, '2005-3-30', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-3-30' 
                   and   match_time = '19:40:00';

insert into players values (null, "Dave", "<last_name>"     );
select @playerID := player_id from players where first_name = "Dave" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 9);

insert into players values (null, "Jay", "<last_name>"     );
select @playerID := player_id from players where first_name = "Jay" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 5);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 0);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 12);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 7);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 18);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -6);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 13);


select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 9);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 2, 2, -6);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 7);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 2);

select @playerID := player_id from players where first_name = "Jay" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 8);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 9);

select @playerID := player_id from players where first_name = "Dave" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 9);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 8);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 5);

select @playerID := player_id from players where first_name = "Jay" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 5);

select @playerID := player_id from players where first_name = "Dave" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 4);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 10);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 6);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 10);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 8);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, 5);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Purple Cobras", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Purple Cobras";

insert into matches values (null, @teamID, @oppTeamID, '2005-4-6', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-4-6' 
                   and   match_time = '19:40:00';

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 0);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 16);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, -5);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 3);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 0);

insert into players values (null, "Ben", "<last_name>"     );
select @playerID := player_id from players where first_name = "Ben" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 18);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 6);

insert into players values (null, "Bob", "<last_name>"     );
select @playerID := player_id from players where first_name = "Bob" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 7);


select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, -1);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 8);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 6);

select @playerID := player_id from players where first_name = "Ben" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 3);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 5);

select @playerID := player_id from players where first_name = "Bob" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 8);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 6);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 5);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 3);

select @playerID := player_id from players where first_name = "Ben" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, -3);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 7);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 1);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 2);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 2);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 15, 2, -3);

select @playerID := player_id from players where first_name = "Bob" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 10);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Clarky's Team", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Clarky's Team";

insert into matches values (null, @teamID, @oppTeamID, '2005-4-13', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-4-13' 
                   and   match_time = '19:40:00';

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 15);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 13);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, -4);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 12);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 18);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 18);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 17);

insert into players values (null, "Adam", "Piric"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 7);


select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 12);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 10);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 6);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 3);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 5);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 21);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 9);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 15);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 16);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 0);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 11, 2, -1);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Piric";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 11);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 3);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 2);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 15, 1, 4);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 6);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Full Boar", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Full Boar";

insert into matches values (null, @teamID, @oppTeamID, '2005-4-21', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-4-21' 
                   and   match_time = '19:40:00';

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, -6);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 17);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 16);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 6);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 12);

insert into players values (null, "Dave", "<last_name>"     );
select @playerID := player_id from players where first_name = "Dave" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 19);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 21);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, -4);


select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, 0);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 5);

select @playerID := player_id from players where first_name = "Dave" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 4);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 4);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 3);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 4);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 8);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 4);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 12);

select @playerID := player_id from players where first_name = "Dave" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 8);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 17);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 1);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 13, 3, -10);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 1);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 15, 1, 0);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 16, 3, -11);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "J. A. F. I. C. S.", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "J. A. F. I. C. S.";

insert into matches values (null, @teamID, @oppTeamID, '2005-4-27', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-4-27' 
                   and   match_time = '19:40:00';

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 10);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 23);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 14);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, -6);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 28);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 8);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 16);

insert into players values (null, "Luke", "<last_name>"     );
select @playerID := player_id from players where first_name = "Luke" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 9);


select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 6);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 7);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 9);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 8);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 2);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 6);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 10);

select @playerID := player_id from players where first_name = "Luke" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 7);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 7);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 11);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, -1);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 3);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 10);

select @playerID := player_id from players where first_name = "Luke" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 10);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 15, 1, -2);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 10);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Agguts", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Agguts";

insert into matches values (null, @teamID, @oppTeamID, '2005-5-4', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-5-4' 
                   and   match_time = '19:40:00';

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 7);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 16);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 8);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 5);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 25);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 0);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 12);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, -5);


select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 11);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 1);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 8);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 7);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 6);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 3);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 15);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 7);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 12);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 2, -1);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 19);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 18);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 5);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 7);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 17);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 16, 2, -8);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Yesterdays Heros", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Yesterdays Heros";

insert into matches values (null, @teamID, @oppTeamID, '2005-5-11', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-5-11' 
                   and   match_time = '19:40:00';

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 3);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 16);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 23);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 9);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 11);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 15);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 16);

insert into players values (null, "Rusty", "<last_name>"     );
select @playerID := player_id from players where first_name = "Rusty" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 5);


select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 11);

select @playerID := player_id from players where first_name = "Rusty" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 2, 2, -3);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 14);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 5);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 20);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 8);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 7, 3, -12);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 13);

select @playerID := player_id from players where first_name = "Rusty" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 8);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 8);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 7);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 2, -6);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 9);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 1);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 15, 2, -5);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 16, 2, 2);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Pyros", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Pyros";

insert into matches values (null, @teamID, @oppTeamID, '2005-5-18', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-5-18' 
                   and   match_time = '19:40:00';

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 1);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 15);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 10);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 8);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 16);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 7);

insert into players values (null, "Steve", "<last_name>"     );
select @playerID := player_id from players where first_name = "Steve" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 21);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 22);


select @playerID := player_id from players where first_name = "Steve" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 8);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 7);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 0);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 18);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 5, 2, -3);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 9);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 14);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 6);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 5);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 11);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 6);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 12, 4, -19);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 6);

select @playerID := player_id from players where first_name = "Steve" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 2);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 12);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, 9);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "The Fockers", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "The Fockers";

insert into matches values (null, @teamID, @oppTeamID, '2005-5-25', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-5-25' 
                   and   match_time = '19:40:00';

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 6);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 19);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 26);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 2);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 31);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 12);

insert into players values (null, "Koges", "<last_name>"     );
select @playerID := player_id from players where first_name = "Koges" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -2);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 17);


select @playerID := player_id from players where first_name = "Koges" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, -1);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 6);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, -1);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 9);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, -3);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 6, 2, -2);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 8);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 5);

select @playerID := player_id from players where first_name = "Koges" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 5);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 4);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 11, 2, 0);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 12, 2, -5);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 7);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 10);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 15, 2, -3);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 16, 2, -1);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Agguts", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Agguts";

insert into matches values (null, @teamID, @oppTeamID, '2005-5-31', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-5-31' 
                   and   match_time = '19:40:00';

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 11);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 18);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 18);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 22);

insert into players values (null, "Al", "Jamie"     );
select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 11);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 18);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -5);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, -7);


select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 11);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 8);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 3, 2, -7);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 13);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 7);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 14);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 4);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 2);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 4);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 2, -9);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 8);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 12, 2, -4);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 6);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 10);

select @playerID := player_id from players where first_name = "Al" and last_name = "Jamie";
insert into overs values (@matchID, @teamID, @playerID, 15, 1, 1);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 13);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Team Tena", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Team Tena";

insert into matches values (null, @teamID, @oppTeamID, '2005-6-14', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-6-14' 
                   and   match_time = '19:40:00';

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, -6);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, -5);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 18);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 15);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 11);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 12);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 8);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, -15);


select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 18);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 18);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 3, 2, 0);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 4, 2, -2);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 5, 3, -13);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 10);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 1);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 9);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 8);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 10, 3, -11);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 11);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 9);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 17);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 10);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 15, 1, 4);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 25);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "J. A. F. I. C. S.", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "J. A. F. I. C. S.";

insert into matches values (null, @teamID, @oppTeamID, '2005-7-6', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-7-6' 
                   and   match_time = '19:40:00';

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 16);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 9);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 5);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 6);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 9);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 21);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -4);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 1);


select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, 3);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 11);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 3, 2, -8);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 2);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 11);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 12);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 4);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 13);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 3);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 10);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 7);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 10);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 8);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 4);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 18);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 16, 2, -4);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Team Tena", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Team Tena";

insert into matches values (null, @teamID, @oppTeamID, '2005-7-13', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-7-13' 
                   and   match_time = '19:40:00';

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 14);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 7);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 10);

insert into players values (null, "Adam", "Fillin"     );
select @playerID := player_id from players where first_name = "Adam" and last_name = "Fillin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 2);

insert into players values (null, "Damien", "<last_name>"     );
select @playerID := player_id from players where first_name = "Damien" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 21);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, -3);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -25);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 3);


select @playerID := player_id from players where first_name = "Adam" and last_name = "Fillin";
insert into overs values (@matchID, @teamID, @playerID, 1, 2, -2);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 8);

select @playerID := player_id from players where first_name = "Damien" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 11);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 13);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 2);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 4);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 11);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 6);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Fillin";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, -4);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 15);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 8);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 4);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 10);

select @playerID := player_id from players where first_name = "Damien" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 16);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 8);

select @playerID := player_id from players where first_name = "Adam" and last_name = "Fillin";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 18);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Thorpies Furballs", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Thorpies Furballs";

insert into matches values (null, @teamID, @oppTeamID, '2005-7-20', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-7-20' 
                   and   match_time = '19:40:00';

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 13);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 1);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, -5);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, -5);

insert into players values (null, "Damien", "<last_name>"     );
select @playerID := player_id from players where first_name = "Damien" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 0);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, -2);

insert into players values (null, "Russell", "<last_name>"     );
select @playerID := player_id from players where first_name = "Russell" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 1);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 9);


select @playerID := player_id from players where first_name = "Damien" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 14);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 13);

select @playerID := player_id from players where first_name = "Russell" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 0);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, -2);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 2);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 7);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 14);

select @playerID := player_id from players where first_name = "Damien" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 8, 2, -3);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 14);

select @playerID := player_id from players where first_name = "Russell" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 15);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 11);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 6);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 13, 2, -3);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 8);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 15, 3, -7);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 16, 2, 9);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Thorpies Furballs", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Thorpies Furballs";

insert into matches values (null, @teamID, @oppTeamID, '2005-7-27', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-7-27' 
                   and   match_time = '19:40:00';

insert into players values (null, "Damien", "<last_name>"     );
select @playerID := player_id from players where first_name = "Damien" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 25);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 17);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 8);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 3);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 15);

insert into players values (null, "Anthony", "Fantin"     );
select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 14);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 2);

insert into players values (null, "Anthony", "Fantin"     );
select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 16);


select @playerID := player_id from players where first_name = "Damien" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 14);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 9);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 3, 1, 9);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 7);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 10);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 7);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 7);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 11);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 15);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 15);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 12);

select @playerID := player_id from players where first_name = "Damien" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 11);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 7);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 8);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 14);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, 2);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Team Tena", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Team Tena";

insert into matches values (null, @teamID, @oppTeamID, '2005-8-10', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-8-10' 
                   and   match_time = '19:40:00';

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 6);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 2);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 22);

insert into players values (null, "Koges", "<last_name>"     );
select @playerID := player_id from players where first_name = "Koges" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 12);

insert into players values (null, "Anthony", "Fantin"     );
select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, -6);

insert into players values (null, "Nick", "Catlow"     );
select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, -11);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 13);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 8);


select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 1, 1, 2);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 5);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 15);

select @playerID := player_id from players where first_name = "Koges" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 5);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 5, 3, -10);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, -2);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 5);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 0);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 15);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 12);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 11);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 12, 2, -3);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 2);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 5);

select @playerID := player_id from players where first_name = "Koges" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 15, 1, 0);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 11);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "The Shinboners", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "The Shinboners";

insert into matches values (null, @teamID, @oppTeamID, '2005-8-18', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-8-18' 
                   and   match_time = '19:40:00';

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, -2);

insert into players values (null, "Nick", "Catlow"     );
select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 5);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 18);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 5);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 25);

insert into players values (null, "Anthony", "Fantin"     );
select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 9);

insert into players values (null, "Mark", "Newton"     );
select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 6);

insert into players values (null, "Nick", "Catlow"     );
select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, -22);


select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 1, 2, -6);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 18);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 4);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 9);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 15);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 6, 2, -4);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 0);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 8, 2, 6);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 10);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 10, 2, -2);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 5);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 16);

select @playerID := player_id from players where first_name = "Mark" and last_name = "Newton";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 9);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 5);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 15, 1, 9);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, -1);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Kev's Team", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Kev's Team";

insert into matches values (null, @teamID, @oppTeamID, '2005-9-1', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-9-1' 
                   and   match_time = '19:40:00';

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 22);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 7);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 7);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 10);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 19);

insert into players values (null, "Anthony", "Fantin"     );
select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 11);

insert into players values (null, "Nick", "Catlow"     );
select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -2);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 9);


select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 7);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 2, 1, 2);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 3, 2, -7);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 4);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 9);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 6, 1, 1);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 7);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 8, 2, -2);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 8);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 6);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 10);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 19);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 13, 2, -6);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 8);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 12);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 8);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "K 2", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "K 2";

insert into matches values (null, @teamID, @oppTeamID, '2005-9-6', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-9-6' 
                   and   match_time = '19:40:00';

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 3);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 0);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 17);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 3);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 12);

insert into players values (null, "Anthony", "Fantin"     );
select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 9);

insert into players values (null, "Nick", "Catlow"     );
select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -5);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 6);


select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 13);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 19);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 10);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 13);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 5, 3, -11);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 9);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 9);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 1);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 0);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 10);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 6);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 12);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 4);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 16);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 22);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 24);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "J. A. F. I. C. S.", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "J. A. F. I. C. S.";

insert into matches values (null, @teamID, @oppTeamID, '2005-9-14', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-9-14' 
                   and   match_time = '19:40:00';

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 23);

insert into players values (null, "Anthony", "Fantin"     );
select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 8);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, -4);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, -4);

insert into players values (null, "Nick", "Catlow"     );
select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, -14);

insert into players values (null, "Glen", "Arnett"     );
select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 15);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 15);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, -3);


select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 12);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 11);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 10);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 4, 1, 4);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 8);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 6);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, -1);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 11);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 1);

select @playerID := player_id from players where first_name = "Glen" and last_name = "Arnett";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 14);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 7);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 12, 2, -2);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 15);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 1);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 11);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, 6);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "The Shinboners", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "The Shinboners";

insert into matches values (null, @teamID, @oppTeamID, '2005-9-28', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-9-28' 
                   and   match_time = '19:40:00';

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 15);

insert into players values (null, "Paul", "<last_name>"     );
select @playerID := player_id from players where first_name = "Paul" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 11);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 13);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 2);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 11);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 6);

insert into players values (null, "Anthony", "Fantin"     );
select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -13);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 12);


select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 8);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 11);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 8);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 15);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 5, 2, -5);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 6, 2, -1);

select @playerID := player_id from players where first_name = "Paul" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 6);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, 3);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 12);

select @playerID := player_id from players where first_name = "Paul" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 5);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 11, 2, -8);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 2);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 16);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 17);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 14);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 12);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "The Woodies", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "The Woodies";

insert into matches values (null, @teamID, @oppTeamID, '2005-10-5', '19:40:00', true);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-10-5' 
                   and   match_time = '19:40:00';

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 12);

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 14);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, -1);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, -13);

insert into players values (null, "Anthony", "Fantin"     );
select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 8);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 9);

insert into players values (null, "Nick", "Catlow"     );
select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, -4);

insert into players values (null, "Anthony", "Fantin"     );
select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, -2);


select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 11);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 15);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 10);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 13);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 9);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 16);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 9);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 9);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 9, 2, 0);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 10, 1, 7);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 11, 2, -2);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 1, 4);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 12);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 10);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 15, 2, -4);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 19);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "H. S. D.", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "H. S. D.";

insert into matches values (null, @teamID, @oppTeamID, '2005-10-12', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-10-12' 
                   and   match_time = '19:40:00';

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 31);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 6);

insert into players values (null, "Nick", "Catlow"     );
select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 11);

insert into players values (null, "John", "Heuval"     );
select @playerID := player_id from players where first_name = "John" and last_name = "Heuval";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 19);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 5);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 16);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 10);

insert into players values (null, "Anthony", "Fantin"     );
select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 10);


select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 6);

select @playerID := player_id from players where first_name = "John" and last_name = "Heuval";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 9);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 3, 2, -3);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 11);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 4);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 6, 4, -20);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 22);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 8, 1, -2);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 9, 1, 4);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 20);

select @playerID := player_id from players where first_name = "John" and last_name = "Heuval";
insert into overs values (@matchID, @teamID, @playerID, 11, 1, 2);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 9);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 13);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 21);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 12);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, 8);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "The Woodies", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "The Woodies";

insert into matches values (null, @teamID, @oppTeamID, '2005-10-19', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-10-19' 
                   and   match_time = '19:40:00';

insert into players values (null, "Gary", "Virgin"     );
select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 16);

insert into players values (null, "Eddie", "Pannowich"     );
select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 14);

insert into players values (null, "Eric", "Morrison"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, 15);

insert into players values (null, "Tom", "McDonnell"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 13);

insert into players values (null, "Nick", "Catlow"     );
select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, 7);

insert into players values (null, "John", "Heuval"     );
select @playerID := player_id from players where first_name = "John" and last_name = "Heuval";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, 3);

insert into players values (null, "Brendan", "Hooker"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 16);

insert into players values (null, "Anthony", "Fantin"     );
select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 1);


select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 11);

select @playerID := player_id from players where first_name = "John" and last_name = "Heuval";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 8);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 8);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 9);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 5, 0, 12);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 10);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 7, 0, 10);

select @playerID := player_id from players where first_name = "Nick" and last_name = "Catlow";
insert into overs values (@matchID, @teamID, @playerID, 8, 2, 1);

select @playerID := player_id from players where first_name = "John" and last_name = "Heuval";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 16);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 13);

select @playerID := player_id from players where first_name = "Tom" and last_name = "McDonnell";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 17);

select @playerID := player_id from players where first_name = "Eric" and last_name = "Morrison";
insert into overs values (@matchID, @teamID, @playerID, 12, 2, 0);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "Hooker";
insert into overs values (@matchID, @teamID, @playerID, 13, 1, 6);

select @playerID := player_id from players where first_name = "Eddie" and last_name = "Pannowich";
insert into overs values (@matchID, @teamID, @playerID, 14, 1, 3);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "Fantin";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 7);

select @playerID := player_id from players where first_name = "Gary" and last_name = "Virgin";
insert into overs values (@matchID, @teamID, @playerID, 16, 0, 7);


#######################################################################################################################

insert into teams values (null, "Two Dogs", "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Kev's Team", "Melbourne", "Victoria", "Australia");

select    @teamID := team_id from teams where team_name = "Two Dogs";
select @oppTeamID := team_id from teams where team_name = "Kev's Team";

insert into matches values (null, @teamID, @oppTeamID, '2005-11-8', '19:40:00', false);

select @matchID := match_ID from matches         
                   where team1_id   =    @teamID 
                   and   team2_id   = @oppTeamID 
                   and   match_date = '2005-11-8' 
                   and   match_time = '19:40:00';

insert into players values (null, "Brendan", "<last_name>"     );
select @playerID := player_id from players where first_name = "Brendan" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 1, 34);

insert into players values (null, "Anthony", "<last_name>"     );
select @playerID := player_id from players where first_name = "Anthony" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 2, 9);

insert into players values (null, "John", "<last_name>"     );
select @playerID := player_id from players where first_name = "John" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 3, -13);

insert into players values (null, "Rob", "<last_name>"     );
select @playerID := player_id from players where first_name = "Rob" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 4, 26);

insert into players values (null, "Nick", "<last_name>"     );
select @playerID := player_id from players where first_name = "Nick" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 5, -9);

insert into players values (null, "Tim", "<last_name>"     );
select @playerID := player_id from players where first_name = "Tim" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 6, -5);

insert into players values (null, "Tom", "<last_name>"     );
select @playerID := player_id from players where first_name = "Tom" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 7, 4);

insert into players values (null, "Eric", "<last_name>"     );
select @playerID := player_id from players where first_name = "Eric" and last_name = "<last_name>";
insert into players_teams values (@playerID, @teamID);
insert into innings values (@matchID, @teamID, @playerID, 8, 1);


select @playerID := player_id from players where first_name = "Rob" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 1, 0, 14);

select @playerID := player_id from players where first_name = "Nick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 2, 0, 18);

select @playerID := player_id from players where first_name = "John" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 3, 0, 9);

select @playerID := player_id from players where first_name = "Tom" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 4, 0, 16);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 5, 1, 4);

select @playerID := player_id from players where first_name = "Tim" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 6, 0, 13);

select @playerID := player_id from players where first_name = "Eric" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 7, 1, 8);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 8, 0, 13);

select @playerID := player_id from players where first_name = "John" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 9, 0, 10);

select @playerID := player_id from players where first_name = "Tom" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 10, 0, 22);

select @playerID := player_id from players where first_name = "Tim" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 11, 0, 10);

select @playerID := player_id from players where first_name = "Nick" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 12, 0, 11);

select @playerID := player_id from players where first_name = "Brendan" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 13, 0, 14);

select @playerID := player_id from players where first_name = "Eric" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 14, 0, 19);

select @playerID := player_id from players where first_name = "Rob" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 15, 0, 11);

select @playerID := player_id from players where first_name = "Anthony" and last_name = "<last_name>";
insert into overs values (@matchID, @teamID, @playerID, 16, 1, 9);


