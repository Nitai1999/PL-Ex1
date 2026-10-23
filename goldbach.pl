% goldbach(N, [P1,P2]): N is the sum of the primes P1 and P2.
% Only the first solution (smallest P1) is returned; fails if none exists.
goldbach(N, [P1, P2]) :-
    N > 2,
    between(2, N, P1),
    is_prime(P1),
    P2 is N - P1,
    P2 >= P1,
    is_prime(P2),
    !.

% is_prime/1 is defined in is_prime.pl
:- ensure_loaded(is_prime).
