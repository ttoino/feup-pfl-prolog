% a)
is_ordered([]) :- !.
is_ordered([_]) :- !.
is_ordered([F, S | T]) :-
    S >= F,
    is_ordered([S | T]).

% b)
insert_ordered(E, [], [E]) :- !.
insert_ordered(E, [H], [E, H]) :-
    H >= E, !.
insert_ordered(E, [H], [H, E]) :-
    E >= H, !.
insert_ordered(E, [F, S | T], [F, E, S | T]) :-
    E >= F, S >= E, !.
insert_ordered(E, [H | T], [H | L]) :-
    insert_ordered(E, T, L).

% c)
insert_sort([], []) :- !.
insert_sort([H | T], L) :-
    insert_sort(T, NewL),
    insert_ordered(H, NewL, L).
