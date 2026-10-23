% Base case: If we want to remove the 1st element, it is the head of the list.
% The resulting list is simply the tail.
remove_at(X, [X|Tail], 1, Tail).

% Recursive case: If K > 1, the head of the list remains in the resulting list.
% We decrement K by 1 and search for the element in the tail.
remove_at(X, [Head|Tail], K, [Head|ResultTail]) :-
    K > 1,
    K1 is K - 1,
    remove_at(X, Tail, K1, ResultTail).