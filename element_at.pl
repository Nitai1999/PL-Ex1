% element_at(X, List, K): X is the K-th element of List.
element_at(X, [X|_], 1).
element_at(X, [_|T], K) :-
    K > 1,
    K1 is K - 1,
    element_at(X, T, K1).
