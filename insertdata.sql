# inserting data from Two Dogs Vs. Cricketer's box 7:40PM 21/12/2005

# teams
insert into teams values (null, "Two Dogs",        "Melbourne", "Victoria", "Australia");
insert into teams values (null, "Cricketer's Box", "Melbourne", "Victoria", "Australia");

# create teamID variables
select @TwoDogsID       := team_id from teams where team_name = "Two Dogs";
select @CricketersBoxID := team_id from teams where team_name = "Cricketer's Box";


# matches
insert into matches values (null, @TwoDogsID, @CricketersBoxID, '2005-12-21', '19:40:00', true);

# create matchID variable
select @matchID := match_ID from matches
                   where team1_id   = @TwoDogsID
                   and   team2_id   = @CricketersBoxID
                   and   match_date = '2005-12-21'
                   and   match_time = '19:40:00';


# players
insert into players values (null, "Eddie",   "Pannowich");
insert into players values (null, "Gary",    "Virgin"   );
insert into players values (null, "Anthony", "Fantin"   );
insert into players values (null, "Max",     "Morrison" );
insert into players values (null, "John",    "Heuvel"   );
insert into players values (null, "Nick",    "Catlow"   );
insert into players values (null, "Eric",    "Morrison" );
insert into players values (null, "Tom",     "McDonnell");

# create playerID variables
select @EddiePannowichID := player_id from players where first_name = "Eddie"   and last_name = "Pannowich";
select @GaryVirginID     := player_id from players where first_name = "Gary"    and last_name = "Virgin"   ;
select @AnthonyFantinID  := player_id from players where first_name = "Anthony" and last_name = "Fantin"   ;
select @MaxMorrisonID    := player_id from players where first_name = "Max"     and last_name = "Morrison" ;
select @JohnHeuvelID     := player_id from players where first_name = "John"    and last_name = "Heuvel"   ;
select @NickCatlowID     := player_id from players where first_name = "Nick"    and last_name = "Catlow"   ;
select @EricMorrisonID   := player_id from players where first_name = "Eric"    and last_name = "Morrison" ;
select @TomMcDonnellID   := player_id from players where first_name = "Tom"     and last_name = "McDonnell";


# players_teams
insert into players_teams values (@EddiePannowichID, @TwoDogsID);
insert into players_teams values (@GaryVirginID    , @TwoDogsID);
insert into players_teams values (@AnthonyFantinID , @TwoDogsID);
insert into players_teams values (@MaxMorrisonID   , @TwoDogsID);
insert into players_teams values (@JohnHeuvelID    , @TwoDogsID);
insert into players_teams values (@NickCatlowID    , @TwoDogsID);
insert into players_teams values (@EricMorrisonID  , @TwoDogsID);
insert into players_teams values (@TomMcDonnellID  , @TwoDogsID);


# innings
insert into innings values (@matchID, @TwoDogsID, @EddiePannowichID, 1, 18);
insert into innings values (@matchID, @TwoDogsID, @GaryVirginID    , 2,  2);
insert into innings values (@matchID, @TwoDogsID, @AnthonyFantinID , 3, 15);
insert into innings values (@matchID, @TwoDogsID, @MaxMorrisonID   , 4,  7);
insert into innings values (@matchID, @TwoDogsID, @JohnHeuvelID    , 5,  4);
insert into innings values (@matchID, @TwoDogsID, @NickCatlowID    , 6,  6);
insert into innings values (@matchID, @TwoDogsID, @EricMorrisonID  , 7, -4);
insert into innings values (@matchID, @TwoDogsID, @TomMcDonnellID  , 8,  0);


# overs
insert into overs values (@matchID, @TwoDogsID, @JohnHeuvelID    ,  1, 0, 13);
insert into overs values (@matchID, @TwoDogsID, @AnthonyFantinID ,  2, 0, 10);
insert into overs values (@matchID, @TwoDogsID, @EddiePannowichID,  3, 0, 17);
insert into overs values (@matchID, @TwoDogsID, @TomMcDonnellID  ,  4, 2,  2);
insert into overs values (@matchID, @TwoDogsID, @EricMorrisonID  ,  5, 0, 15);
insert into overs values (@matchID, @TwoDogsID, @NickCatlowID    ,  6, 1, 10);
insert into overs values (@matchID, @TwoDogsID, @MaxMorrisonID   ,  7, 0, 20);
insert into overs values (@matchID, @TwoDogsID, @GaryVirginID    ,  8, 0, 11);
insert into overs values (@matchID, @TwoDogsID, @MaxMorrisonID   ,  9, 0, 14);
insert into overs values (@matchID, @TwoDogsID, @TomMcDonnellID  , 10, 1, -2);
insert into overs values (@matchID, @TwoDogsID, @EricMorrisonID  , 11, 1,  8);
insert into overs values (@matchID, @TwoDogsID, @AnthonyFantinID , 12, 1,  4);
insert into overs values (@matchID, @TwoDogsID, @EddiePannowichID, 13, 0, 17);
insert into overs values (@matchID, @TwoDogsID, @NickCatlowID    , 14, 1,  4);
insert into overs values (@matchID, @TwoDogsID, @GaryVirginID    , 15, 1,  2);
insert into overs values (@matchID, @TwoDogsID, @JohnHeuvelID    , 16, 2, -3);


commit;
