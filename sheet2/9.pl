% a)
run(_, [], [], N, N) :- !.
run(E, [H | T], [H | T], N, N) :-
    E \= H, !.
run(H, [H | T], L2, N, OutN) :-
    NewN is N + 1,
    run(H, T, L2, NewN, OutN).

rle([], []) :- !.
rle([H | T], [H-Reps | R]) :-
    run(H, T, L, 1, Reps),
    rle(L, R).

% b)
un_rle([], []) :- !.
un_rle([H-1 | R], [H | T]) :-
    un_rle(R, T).
un_rle([H-Reps | R], [H | T]) :-
    Reps > 1,
    NewReps is Reps - 1,
    un_rle([H-NewReps | R], T).
