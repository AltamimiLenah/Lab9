% Lab8_TASK1_Boolean.pl - Lab 8, Task 1
% (A AND B) OR (NOT A AND NOT B), built like slide 32:
% three-argument truth tables, then one rule (two ands, two negs, one or).
% No invalid catch-all clauses.

% Negation
neg(true,  false).
neg(false, true).

% AND truth table
and(true,  true,  true).
and(true,  false, false).
and(false, true,  false).
and(false, false, false).

% OR truth table
or(true,  true,  true).
or(true,  false, true).
or(false, true,  true).
or(false, false, false).

% expression(A, B, Output)
expression(A, B, Output) :-
    neg(A, NotA),
    neg(B, NotB),
    and(A, B, Part1),
    and(NotA, NotB, Part2),
    or(Part1, Part2, Output).

% Tests (press ; after each answer):
% ?- expression(true,  true,  O).    O = true.
% ?- expression(true,  false, O).    O = false.
% ?- expression(false, true,  O).    O = false.
% ?- expression(false, false, O).    O = true.
