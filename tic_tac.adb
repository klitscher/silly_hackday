with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
procedure Tic_tac is
   type Index is range 1 .. 9;
   Win : Integer := 2;
   Count : Integer := 0;
   type My_Array is array (1 .. 9) of String (1 .. 3);
   Arr : My_Array := (" 1 ", " 2 ", " 3 ", " 4 ", " 5 ", " 6 ", " 7 ", " 8 ", " 9 ");
begin
   Put_Line("****************  Rules  *******************");
   Put_Line("*** Welcome to tic-tac-toe in ada!       ***");
   Put_Line("*** The rules are simple: Get three `X`  ***");
   Put_Line("*** or `O` in a row and you win! You are ***");
   Put_Line("*** allowed to overwrite your oponent's  ***");
   Put_Line("*** square, but the game ends after 9    ***");
   Put_Line("*** moves, regardless of if all the      ***");
   Put_Line("*** squares are filled                   ***");
   Put_Line("****************  Rules  *******************");
   Put_Line("");
   Put_Line("**************  How to Play  ***************");
   Put_Line("*** Each quadrant is represented by a    ***");
   Put_Line("*** number between 1 and 9, inclusive.   ***");
   Put_Line("*** Type the number of the quadrant you  ***");
   Put_Line("*** want to place your mark in, then hit ***");
   Put_Line("*** `enter`. Have fun and don't lose!    ***");
   Put_Line("**************  How to Play  ***************");
   for J in 1 .. 9 loop
      if J = 4 or J = 7 then
	 Put_Line("");
      end if;	 
      Put(Arr(J));
      if J = 9 then
	 Put_Line("");
      end if;
   end loop;
   for I in Index loop
      if I mod 2 = 1 then
	 -- Loop is used here specifically for error handling and only error handling...
	 -- Without it, the error exits instead of prompting again
	 loop
	    declare
	       Coord : Integer;
	    begin
	       Count := Count + 1;
	       Put_Line ("*** Player 1, enter your square number! ***");
	       Get(Coord);
	       if Count >= 5 and Count <10 then
		  Put_Line ("*** Your the type of person that refuses to look at the Ikea manual aren't you... ***");
		  Count := 0;
	       end if;
	       if Count >= 10 then
		  Put_Line ("********************************************************");
		  Put_Line ("*** This is embarassing, Player 2 wins! Player 1 is  ***");
		  Put_Line ("*** aparently trying to eat the keyboard...          ***");
		  Put_Line ("********************************************************");
		  return;
	       end if;
	       Arr(Coord) := " X ";
	       Count := 0;
	       exit;
	    exception
	       when E : Data_Error =>
		  Put_Line("*** Player 1, please enter a number ***");
		  Skip_Line;
	       when E : Constraint_Error =>
		  Put_Line("*** Player 1, please enter a number between 1 and 9 inclusive ***");
		  Skip_Line;
	    end;
	 end loop;
      else
	 loop
	    declare
	       Coord : Integer;
	    begin
	       Count := Count + 1;
	       Put_Line ("*** Player 2, enter your square number! ***");
	       Get(Coord);
	       if Count >= 5 and Count < 10 then
		  Put_Line ("*** Your the type of person that refuses to look at the Ikea manual aren't you... ***");
		  Count := 0;
	       end if;
	       if Count >= 10 then
		  Put_Line ("********************************************************");
		  Put_Line ("*** This is embarassing, Player 1 wins! Player 2 is  ***");
		  Put_Line ("*** aparently trying to eat the keyboard...          ***");
		  Put_Line ("********************************************************");
		  return;
	       end if;
	       Arr(Coord) := " O ";
	       Count := 0;
	       exit;
	    exception
	       when E : Data_Error =>
		  Put_Line("*** Player 2, please enter a number ***");
		  Skip_Line;
	       when E : Constraint_Error =>
		  Put_Line("*** Player 2, please enter a number between 1 and 9 inclusive ***");
		  Skip_Line;
	    end;
	 end loop;
      end if;
      for J in 1 .. 9 loop
	 if J = 4 or J = 7 then
	    Put_Line("");
	 end if;
	 Put(Arr(J));
	 if J = 9 then
	    Put_Line("");
	 end if;
      end loop;
      if ((Arr(1) = " X " and Arr(2) = " X " and Arr(3) = " X ") or
	    (Arr(4) = " X " and Arr(5) = " X " and Arr(6) = " X ") or
	    (Arr(7) = " X " and Arr(8) = " X " and Arr(9) = " X ") or
	    (Arr(1) = " X " and Arr(4) = " X " and Arr(7) = " X ") or
	    (Arr(2) = " X " and Arr(5) = " X " and Arr(8) = " X ") or
	    (Arr(3) = " X " and Arr(6) = " X " and Arr(9) = " X ") or
	    (Arr(1) = " X " and Arr(5) = " X " and Arr(9) = " X ") or
	    (Arr(3) = " X " and Arr(5) = " X " and Arr(7) = " X ") 
	 ) then
	 Put_Line("**********************");
	 Put_Line("*** Player 1 Wins! ***");
	 Put_Line("**********************");
	 Win := 0;
      end if;
      if ((Arr(1) = " O " and Arr(2) = " O " and Arr(3) = " O ") or
	    (Arr(4) = " O " and Arr(5) = " O " and Arr(6) = " O ") or
	    (Arr(7) = " O " and Arr(8) = " O " and Arr(9) = " O ") or
	    (Arr(1) = " O " and Arr(4) = " O " and Arr(7) = " O ") or
	    (Arr(2) = " O " and Arr(5) = " O " and Arr(8) = " O ") or
	    (Arr(3) = " O " and Arr(6) = " O " and Arr(9) = " O ") or
	    (Arr(1) = " O " and Arr(5) = " O " and Arr(9) = " O ") or
	    (Arr(3) = " O " and Arr(5) = " O " and Arr(7) = " O ") 
	 ) then
	 Put_Line("**********************");
	 Put_Line("*** Player 2 Wins! ***");
	 Put_Line("**********************");
	 Win := 1;
      end if;
      exit when Win = 1 or Win = 0;
   end loop;
   if Win = 2 then
      Put_Line("******************");
      Put_Line("*** Its a tie! ***");
      Put_Line("******************");   
   end if;
end Tic_tac;
