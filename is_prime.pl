% 2 is the first prime number.
is_prime(2).

% N is prime if it is greater than 2 and has no divisors starting from 2.
% The \+ operator means "NOT" (fails if has_divisor succeeds).
is_prime(N) :-
    N > 2,
    \+ has_divisor(N, 2).

% Base case for finding a divisor: D divides N without a remainder.
% We only need to check up to the square root of N (D * D =< N).
has_divisor(N, D) :-
    D * D =< N,
    N mod D =:= 0.

% Recursive case: check the next number (D + 1) if D is not a divisor.
has_divisor(N, D) :-
    D * D =< N,
    NextD is D + 1,
    has_divisor(N, NextD).