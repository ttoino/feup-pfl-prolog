% a)
list_append([], L, L).
list_append([H | T1], L2, [H | T2]) :-
    list_append(T1, L2, T2).

% b)
list_member(E, L) :-
    list_append(_, [E | _], L), !.

% c)
list_last(L, E) :-
    list_append(_, [E], L), !.

% d)
list_nth(N, L, E) :-
    list_append(Start, [E | End], L),
    length(Start, N), !.

% e)
list_append([], []) :- !.
list_append([HL | T], OL) :-
    list_append(T, IL),
    list_append(HL, IL, OL).

% f)
list_del(L, E, R) :-
    list_append(Start, [E | End], L),
    list_append(Start, End, R), !.

% g)
list_before(F, S, L) :-
    list_append(Start, [F | Rest], L),
    list_append(Middle, [S | End], Rest), !.

% h)
list_replace_once(X, Y, L1, L2) :-
    list_append(Start, [X | End], L1),
    list_append(Start, [Y | End], L2), !.

% i)
list_repeated(X, L) :-
    list_append(Start, [X | Rest], L),
    list_append(Middle, [X | End], Rest), !.

% j)
list_shift_rotate(L1, N, L2) :-
    list_append(End, Start, L1),
    length(End, N),
    list_append(Start, End, L2), !.
