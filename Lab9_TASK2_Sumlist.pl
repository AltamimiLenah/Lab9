% Lab8_TASK2_Sumlist.pl - Lab 8, Task 2
% sumlist(List, Sum): Sum is the total of the numbers in List.

% The sum of an empty list is 0.
sumlist([], 0).

% Add the first number to the sum of the rest.
sumlist([First|Others], Sum) :-
    sumlist(Others, SumOthers),
    Sum is SumOthers + First.

% Tests:
% ?- sumlist([1,2,5,7], S).    S = 15.
% ?- sumlist([], S).           S = 0.
