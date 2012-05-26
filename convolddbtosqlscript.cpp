#include <iostream>
#include <iomanip>
#include <fstream>
#include <string>
#include <cstdio>

/*
 *
 */
class matchRecord
{
 public:
   int day, month, year,            // match date
       teamScore, oppTeamScore,     // team scores
       teamPenalty, oppTeamPenalty, // team penalty runs
       runsScoredArray[8],          // batting scores
       wicketsTakenArray[16],       // bowling scores (wickets taken)
       runsConcededArray[16];       // bowling scores (runs conceded)

   bool teamBatted1st;

   std::string    teamName,
               oppTeamName,
               firstNameBattArray[8],
                lastNameBattArray[8],
               firstNameBowlArray[16],
                lastNameBowlArray[16];
};

matchRecord match[62];

bool readFromFile(std::ifstream &, int &, matchRecord &);
bool writeSQLscriptToFile(std::ofstream &, matchRecord &);

/*
 * Read match data from file "iFileName", translate to SQL script, and write to "oFileName".
 */
int main(void)
{
   using std::cout;
   using std::endl;

   std::string iFileName("IndCrkDB.dat"),
               oFileName("oldIndCrkDBscript.sql");

   // open files
   std::ifstream iFile(iFileName.c_str());
   std::ofstream oFile(oFileName.c_str());

   if (iFile == NULL)
   {
      cout << "File \"" << iFileName << "\" could not be opened for reading." << endl;

      return false;
   }

   if (oFile == NULL)
   {
      cout << "File \"" << oFileName << "\" could not be opened for writing." << endl;

      return false;
   }

   // read file, one match record at a time, and translate to SQL script
   int lines = 1, // to enable file format error to be located
       i     = 0; // counter
   cout << "Reading data from file \"" << iFileName << "\"." << endl;
   while (iFile.peek() != EOF)
   {
      readFromFile(iFile, lines, match[i]);

      cout << "."; // progress indicator

      ++i;
   }

   int totalMatches = i - 1;
   cout << endl << totalMatches << " match records were read successfully." << endl;

   cout << "Writing SQL script to file \"" << oFileName << "\"." << endl;
   for (i = totalMatches; i >= 0; --i)
   {
      writeSQLscriptToFile(oFile, match[i]);

      cout << "."; // progress indicator
   }

   cout << endl << totalMatches << " match records were converted to SQL script successfully." << endl;

   // close files
   iFile.close();
   oFile.close();

   return true;
}

/*
 *
 */
inline bool readChar(std::istream &in, const char &c)
{
   char ch = in.get();

   if (ch == c)
     return true;
   else
   {
      std::cout << "ERROR: expected (char)" << (int)c << ", read (char)" << (int)ch << "." << std::endl;

      return false;
   }
}

/*
 * Input function for nameRecord class.
 */
inline void readLine(std::istream &in, std::string &s)
{   char c;
   while (in.get(c))
   {
      if (c == (char)13) break;
      else               s += c; 
   }
}

/*
 * Read match record from ifstream 'in' into 'm'.
 * Return true if succeed, false if fail.
 * 'lineNo' useful for file format error detection.
 * Format must match that used in matchRecord::writeToFile().
 */
bool readFromFile(std::ifstream &in, int &lineNo, matchRecord &match)
{
   using std::cerr;
   using std::cout;
   using std::endl;

   // exception classes
   struct expectedNewLineErr {expectedNewLineErr(void) {}};
   struct expectedYorNErr    {expectedYorNErr(void)    {}};

   int &l = lineNo;

   // test for NULL stream
   if (in == NULL)
     return false;

   // test for end of file
   if (in.peek() == EOF)
     return false;

   try
   {
      char c; // for skipping characters

      // read date (line 1)
      in      >> match.day
         >> c >> match.month
         >> c >> match.year;

      if (readChar(in, (char)13));     else throw expectedNewLineErr();
      if (readChar(in, (char)10)) ++l; else throw expectedNewLineErr();
      if (readChar(in, (char)13));     else throw expectedNewLineErr();
      if (readChar(in, (char)10)) ++l; else throw expectedNewLineErr();

      // read team name and score,
      readLine(in, match.teamName);     ++l;
      in >> match.teamScore;

      if (readChar(in, (char)13));     else throw expectedNewLineErr();
      if (readChar(in, (char)10)) ++l; else throw expectedNewLineErr();

      // read opposition team name and score
      readLine(in, match.oppTeamName);  ++l;
      in >> match.oppTeamScore;

      if (readChar(in, (char)13));     else throw expectedNewLineErr();
      if (readChar(in, (char)10)) ++l; else throw expectedNewLineErr();
      if (readChar(in, (char)13));     else throw expectedNewLineErr();
      if (readChar(in, (char)10)) ++l; else throw expectedNewLineErr();

      // read which team batted first (line 8)
      switch(c = in.get())
      {
       case 'Y': match.teamBatted1st = true;  break;
       case 'N': match.teamBatted1st = false; break;
       default:  throw expectedYorNErr();
      }

      if (readChar(in, (char)13));     else throw expectedNewLineErr();
      if (readChar(in, (char)10)) ++l; else throw expectedNewLineErr(); 

      // read team batting scores
      for (int i = 0; i < 8; ++i)
      {
         in >> match.firstNameBattArray[i];
         in >> match.lastNameBattArray[i]; ++l;
         in >> match.runsScoredArray[i];                                  ++l;
      }

      if (readChar(in, (char)13));     else throw expectedNewLineErr();
      if (readChar(in, (char)10)) ++l; else throw expectedNewLineErr();

      // read team penalty
      in >> match.teamPenalty;          ++l;

      if (readChar(in, (char)13));     else throw expectedNewLineErr();
      if (readChar(in, (char)10)) ++l; else throw expectedNewLineErr();

      // read team bowling scores
      for (int i = 0; i < 16; ++i)
      {
         in >> match.firstNameBowlArray[i];
         in >> match.lastNameBowlArray[i]; ++l;
         in >> match.wicketsTakenArray[i];                                ++l;
         in >> match.runsConcededArray[i];                                ++l;
      }

      if (readChar(in, (char)13));     else throw expectedNewLineErr();
      if (readChar(in, (char)10)) ++l; else throw expectedNewLineErr();

      // read opposition team penalty
      in >> match.oppTeamPenalty;       ++l;

      if (readChar(in, (char)13));     else throw expectedNewLineErr();
      if (readChar(in, (char)10)) ++l; else throw expectedNewLineErr();
      if (readChar(in, (char)13));     else throw expectedNewLineErr();
      if (readChar(in, (char)10)) ++l; else throw expectedNewLineErr();
      if (readChar(in, (char)13));     else throw expectedNewLineErr();
      if (readChar(in, (char)10)) ++l; else throw expectedNewLineErr();
   }
   catch (expectedNewLineErr)
   {
      cout << "File format error at line number " << lineNo << "." << endl
           << " Expected newline character ('\\n')."               << endl;
      exit(1);
   }
   catch (expectedYorNErr)
   {
      cout << "File format error at line number " << lineNo << "." << endl
           << " Expected Y or N."                                  << endl;
   }
   catch (...)
   {
      std::cout << "Unknown error at line number " << lineNo << "." << endl;
      exit(1);
   }

   return true;
}

/*
 * Write match record to ofstream 'out'.
 * Return true if succeed, false if fail.
 * Format must match that used in matchRecord::readFromFile().
 */
bool writeSQLscriptToFile(std::ofstream &out, matchRecord &match)
{
   using std::endl;
   using std::setw;
   using std::sprintf;

   out << "#######################################################################################################################" << endl;

   out << endl;

   // insert team names into database
   out << "insert into teams values (null, \"" << match.teamName    << "\", \"Melbourne\", \"Victoria\", \"Australia\");" << endl;
   out << "insert into teams values (null, \"" << match.oppTeamName << "\", \"Melbourne\", \"Victoria\", \"Australia\");" << endl;

   out << endl;

   // create mysql variables for teamID and oppTeamID
   out << "select    @teamID := team_id from teams where team_name = \"" << match.teamName    << "\";" << endl;
   out << "select @oppTeamID := team_id from teams where team_name = \"" << match.oppTeamName << "\";" << endl;

   out << endl;

   // insert match title into database
   std::string teamBatted1stString = (match.teamBatted1st == true)? "true": "false";
   out << "insert into matches values (null, @teamID, @oppTeamID, "
       << "'" << match.year << "-" << match.month << "-" << match.day
       << "', '19:40:00', " << teamBatted1stString << ");" << endl;

   out << endl;

   // create mysql variable for matchID
   out << "select @matchID := match_ID from matches         " << endl
       << "                   where team1_id   =    @teamID " << endl
       << "                   and   team2_id   = @oppTeamID " << endl
       << "                   and   match_date = " << "'" << match.year << "-" << match.month << "-" << match.day << "' " << endl
       << "                   and   match_time = '19:40:00';" << endl;

   out << endl;

   // insert names, name-team connections, and batting scores into database
   for (int i = 0; i < 8; i++)
   {
      // insert name into database
      out << "insert into players values (null, \"" << match.firstNameBattArray[i] << "\", \""
                                                    << match.lastNameBattArray[i]  << "\"     );" << endl;

      // create mysql variable for playerID
      out << "select @playerID := player_id from players where first_name = \"" << match.firstNameBattArray[i]
          <<                                            "\" and last_name = \"" << match.lastNameBattArray[i]  << "\";" << endl;

      // insert name-team connection into database
      out << "insert into players_teams values (@playerID, @teamID);" << endl;

      // insert batting score into database
      out << "insert into innings values (@matchID, @teamID, @playerID, " << i + 1 << ", " << match.runsScoredArray[i] << ");" << endl;

      out << endl;
   }

   out << endl;

   // insert bowling scores into database
   for (int i = 0; i < 16; i++)
   {
      // create mysql variable for playerID
      out << "select @playerID := player_id from players where first_name = \"" << match.firstNameBowlArray[i]
                                                     << "\" and last_name = \"" << match.lastNameBowlArray[i]  << "\";" << endl;

      // insert batting score into database
      out << "insert into overs values (@matchID, @teamID, @playerID, " << i + 1 << ", "
          << match.wicketsTakenArray[i] << ", " << match.runsConcededArray[i] << ");" << endl;

      out << endl;
   }

   out << endl;

   return true;
}
