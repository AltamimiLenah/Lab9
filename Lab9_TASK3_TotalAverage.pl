% Lab8_TASK3_TotalAverage.pl - Lab 8, Task 3
% Reads three numbers and prints the Total and the Average.
% Run it with:  ?- calculate.
% End every number with a full stop, e.g.  4.

calculate :-
    write('Number 1: '), nl, read(N1),
    write('Number 2: '), nl, read(N2),
    write('Number 3: '), nl, read(N3),
    Total is N1 + N2 + N3,
    Average is (N1 + N2 + N3) / 3,
    write('The Total is: '), write(Total), nl,
    write('The Average is: '), write(Average), nl.

% Example: 4, 5, 7  ->  Total 16, Average 5.333333333333333
