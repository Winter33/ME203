%Project Question 1A


clear all, clc, close all, format compact
% 1) start the game, display empty board as 3 by 3 doublse matrix
board=cell(3,3)

% 2) Select which player is X and O?
playersymbols={'X','O'};

player(1).symbol=playersymbols{(1)};
player(2).symbol=playersymbols{(2)};

winner=0;

while winner<1 
    %checks to determine if all positions on board are filled
            workpls=isempty( board{1,1} & board{1,2} & board{1,3}... 
                       & board{2,1} & board{2,2} & board{2,3}...
                       & board{3,1} & board{3,2} & board{3,3});
                   %Determines a tie game
            if workpls==0;
                disp('Tie Game')
                winner=1;
                break
         
            else
  % Request player1?s move
    player1move=input('Player 1, please enter your move [row column]: ');
    SpotTaken= isempty(board{player1move(1),player1move(2)});
  if SpotTaken==0 ;
     disp('This spot is taken  please choose another spot');
            
  else
    % Redraw updated board. 
    board{player1move(1),player1move(2)}=player(1).symbol;
    board
  
      
 % Did X win.
           if gameWon(board, player(1).symbol)
        
 % Display winner on the screen. 

          disp('Winner is player 1!')
          winner=1; 
           else %check if board is filled
                workpls=isempty( board{1,1} & board{1,2} & board{1,3}... 
                        & board{2,1} & board{2,2} & board{2,3}...
                        & board{3,1} & board{3,2} & board{3,3});
          
           if workpls==0;
               %tie game is displayed
              disp('Tie Game');
              winner=1;
                break
           else      
  % Request player2s move 
             player2move=input('Player 2, please enter your move: ');
             SpotTaken2 = isempty(board{player2move(1),player2move(2)});
             %check if theposition is taken
           if SpotTaken2 ==0
              % while loop runs until the player pics an open spot
             while SpotTaken2==0  
                 disp('This spot is taken  please choose another spot')
                    

                 player2move=input('Player 2, please enter your move [row column]: ');
                 SpotTaken2 = isempty(board{player2move(1),player2move(2)});
                 end
            board{player2move(1),player2move(2)}=player(2).symbol;
            board
            else
%// 7) Input Player2s move. Redraw updated board
             board{player2move(1),player2move(2)}=player(2).symbol;
               board
  % Determine if player two won
               if gameWon(board, player(2).symbol)
  %Display winner on the screen. 
               disp('Winner is player 2!')
               winner=1;
       end
    end
  end
end
end
end
end
