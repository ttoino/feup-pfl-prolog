% a)
invert([], []).
invert([H | T], L) :-
    invert(T, L1),
    append(L1, [H], L).

% b)
del_one(Elem, [], []).
del_one(Elem, [Elem | T], T).
del_one(Elem, [H | T], [H | L1]) :-
    H =\= Elem,
    del_one(Elem, T, L1).

% c)
del_all(Elem, [], []).
del_all(Elem, [Elem | T], L2) :-
    del_all(Elem, T, L2).
del_all(Elem, [H | T], [H | L1]) :-
    H =\= Elem,
    del_all(Elem, T, L1).

% d)
del_all_list(_, [], []).
del_all_list([], L, L).
del_all_list([H | T], L1, L2) :-
    del_all(H, L1, L),
    del_all_list(T, L, L2).

% e)
del_dups([], []).
del_dups([H | L1], [H | L]) :-
    del_all(H, L1, L2),
    del_dups(L2, L).

% f)
list_perm([], []).
list_perm([H1 | T1], L2) :-
    del_one(H1, L2, DelL2),
    L2 \= DelL2,
    list_perm(T1, DelL2).

% g)
replicate(0, _, []).
replicate(N, E, [E | L]) :-
    N > 0,
    N1 is N - 1,
    replicate(N1, E, L).

% h)
intersperse(_, [], []).
intersperse(_, [H], [H]) :- !.
intersperse(E, [H | T], [H, E | L]) :-
    intersperse(E, T, L).

% i)
insert_elem(0, L, H, [H | L]) :- !.
insert_elem(I, [H | T1], E, [H | T2]) :-
    I > 0,
    I1 is I - 1,
    insert_elem(I1, T1, E, T2).

% j)
delete_elem(0, [H | T], H, T) :- !.
delete_elem(I, [H | T1], E, [H | T2]) :-
    I > 0,
    I1 is I - 1,
    delete_elem(I1, T1, E, T2).

% k)
replace([H | T], 0, H, E, [E | T]) :- !.
replace([H | T1], I, O, N, [H | T2]) :-
    I > 0,
    I1 is I - 1,
    replace(T1, I1, O, N, T2).
