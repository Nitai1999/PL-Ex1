% Truth values are the atoms true and fail, so a boolean expression is
% itself a goal: it succeeds when its value is true and fails otherwise.

% not/1 is a built-in in swipl, so allow redefining it.
:- redefine_system_predicate(not(_)).

and(A, B)   :- A, B.
or(A, _)    :- A.
or(A, B)    :- \+ A, B.
not(A)      :- \+ A.
xor(A, B)   :- A, \+ B.
xor(A, B)   :- \+ A, B.
nand(A, B)  :- \+ and(A, B).
nor(A, B)   :- \+ or(A, B).
equal(A, B) :- A, B.
equal(A, B) :- \+ A, \+ B.

% table(A, B, Expr): print the truth table of Expr over the variables A, B.
table(A, B, Expr) :-
    member(A, [true, fail]),
    member(B, [true, fail]),
    ( Expr -> R = true ; R = fail ),
    write(A), write('  '), write(B), write('  '), write(R), nl,
    fail.
table(_, _, _).
