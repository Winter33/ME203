%Project Question 1b
clear all, clc, close all, format compact

% 1) start the game, display empty board 

board=cell(3,3)
% PLayer symbols
playersymbols={'X','O'};
player(1).symbol=playersymbols{(1)};
player(2).symbol=playersymbols{(2)};

%Initial conditions
winsX=0;
winsO=0;
winsTie=0;
N=5000;
%loop runs for 1 and ends when N iterations is reached
for i=1:N
    
    while true
% check if the board is filled and if it is determines tie game
            workpls=isempty( board{1,1} & board{1,2} & board{1,3}... 
                       & board{2,1} & board{2,2} & board{2,3}...
                       & board{3,1} & board{3,2} & board{3,3});
            if workpls==0;
                winsTie=winsTie+1;
                break
         
            else %X's move is genreated randomly
                 player1move=randi([1,3],[1,2],'double');
                 SpotTaken1= isempty(board{player1move(1),player1move(2)});
                if SpotTaken1== 0;


                else
        % Redraw updated board. 
                    board{player1move(1),player1move(2)}=player(1).symbol;
                    board;

        %Determine if X won
                        if gameWon(board, player(1).symbol)
                            %X won
                            winsX=winsX+1;

                            break
                        else
                           
                            % O's move is genrerated randomly 
                            player2move=randi([1,3],[1,2],'double');
                            SpotTaken2 = isempty(board{player2move(1),player2move(2)});
                               %checks if spots are taken 
                            if SpotTaken2 ==0;
                                %Checks if this move fills the board
                                while SpotTaken2==0
 
                                        workpls=isempty( board{1,1} & board{1,2} & board{1,3}... 
                                        & board{2,1} & board{2,2} & board{2,3}...
                                        & board{3,1} & board{3,2} & board{3,3});
                                  %if this is the last move its a tie game
                              
                                        if workpls==0;
                                            %tie
                                            winsTie=winsTie+1;
                                            break
                                        else        
                                            player2move=randi([1,3],[1,2],'double');
                                             SpotTaken2 = isempty(board{player2move(1),player2move(2)});
                                        end
 
                                end
                                board{player2move(1),player2move(2)}=player(2).symbol;
                                board;
                                %determine if o won
                                 if gameWon(board,player(2).symbol)

                                    winsO=winsO+1;
                                    break
                                 else
                                     continue
                                 end
                            else
                                %// 7) Input Player2s move. Redraw updated board
                                board{player2move(1),player2move(2)}=player(2).symbol;
                                board;
                                %determine if o won
                                if gameWon(board,player(2).symbol)
                                %O won
                                    winsO=winsO+1;

                                    break
                                end
                          
                    end
                end
            end
        end
    end
    %reset board conditions to empty
    board=cell(3,3);
   
end

%Score board
wins=winsX
%loss iswhen O wins and marked on the graph as O wins instead of losses
loss=winsO
tie=winsTie

%generate histogram/bargraph with labels
x = categorical({'X wins', 'O Wins', 'Ties'});
y = [wins, loss, tie];
bar(x,y)
xlabel('Outcome')
ylabel('Frequency')
title('Tic Tac Toe Game Results')
