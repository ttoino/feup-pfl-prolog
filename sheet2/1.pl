% a)
factorial(0, 1).
factorial(N, F) :-
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is N * F1.

% b)
somaRec(0, 0).
somaRec(N, Sum) :-
    N > 0,
    N1 is N - 1,
    somaRec(N1, Sum1),
    Sum is N + Sum1.

% c)
fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(N, F) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    F is F1 + F2.

% d)
isPrimeHelper(X, X) :- !.
isPrimeHelper(X, Y) :-
    X > Y,
    Y > 1,
    (X mod Y) =\= 0,
    Y1 is Y + 1,
    isPrimeHelper(X, Y1).

isPrime(X) :- isPrimeHelper(X, 2).
