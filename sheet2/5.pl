% a)
list_size([], 0).
list_size([H | T], Size) :-
    list_size(T, SizeT),
    Size is SizeT + 1.

% b)
list_sum([], 0).
list_sum([H | T], Sum) :-
    list_sum(T, Sum1),
    Sum is Sum1 + H.

% c)
list_prod([], 1).
list_prod([H | T], Prod) :-
    list_prod(T, Prod1),
    Prod is Prod1 * H.

% d)
inner_product([], [], 0).
inner_product([H1 | T1], [H2 | T2], Prod) :-
    inner_product(T1, T2, Prod1),
    Prod is H1 * H2 + Prod1.

% e)
count(Elem, [], 0). 
count(Elem, [Elem | T], N) :-
    count(Elem, T, N1),
    N is N1 + 1.
count(Elem, [H | T], N) :-
    Elem =\= H,
    count(Elem, T, N).
