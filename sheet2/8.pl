% a)
list_to(0, []) :- !.
list_to(N, L) :-
    N > 0,
    N1 is N - 1,
    list_to(N1, Start),
    append(Start, [N], L).

% b)
list_from_to(N, N, [N]) :- !.
list_from_to(Start, End, [Start | L]) :-
    End > Start,
    Start1 is Start + 1,
    list_from_to(Start1, End, L).

% c)
list_from_to_step(Start, _, End, []) :-
    Start > End, !.
list_from_to_step(Start, Step, End, [Start | L]) :-
    End >= Start,
    NewStart is Start + Step,
    list_from_to_step(NewStart, Step, End, L).

% e)
primes(1, []) :- !.
primes(N, L) :-
    N > 1,
    N1 is N - 1,
    primes(N1, Start),
    (
        isPrime(N), append(Start, [N], L), !;
        L = Start, !
    ).

% f)
fibs(0, [0]) :- !.
fibs(N, L) :-
    N > 0,
    fibonacci(N, F),
    NewN is N - 1,
    fibs(NewN, Start),
    append(Start, [F], L).
