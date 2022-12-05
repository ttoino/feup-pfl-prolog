% a)
print_n(_, 0) :- !.
print_n(S, N) :-
    write(S),
    NewN is N - 1,
    print_n(S, NewN).

% b)
print_str("").
print_str([Code | T]) :- char_code(Char, Code), write(Char), print_str(T).

print_text(Text, Symbol, Padding) :-
    write(Symbol),
    print_n(' ', Padding),
    print_str(Text),
    print_n(' ', Padding),
    write(Symbol).

% c)
print_banner_symbols(Symbol, Width) :-
    print_n(Symbol, Width).

print_banner_blank(Symbol, Width) :-
    W is Width - 2,
    write(Symbol),
    print_n(' ', W),
    write(Symbol).

print_banner_sentence(Text, Symbol, Width) :-
    length(Text, Len),
    W is Width - Len - 2,
    HW is W/2,
    LW is floor(HW),
    RW is ceiling(HW),
    write(Symbol),
    print_n(' ', LW),
    print_str(Text),
    print_n(' ', RW),
    write(Symbol).

print_banner(Text, Symbol, Padding) :-
    length(Text, Len),
    Width is Len + Padding * 2 + 2,
    print_banner_symbols(Symbol, Width), nl,
    print_banner_blank(Symbol, Width), nl,
    print_banner_sentence(Text, Symbol, Width), nl,
    print_banner_blank(Symbol, Width), nl,
    print_banner_symbols(Symbol, Width).

% d)
read_number(X, X) :- peek_code(10), !.
read_number(Curr, Out) :-
    get_code(C),
    char_code('0', Zero),
    C >= Zero,
    Zero + 9 >= C,
    NewCurr is Curr * 10 + (C - Zero),
    read_number(NewCurr, Out).

read_number(X) :- read_number(0, X).

% e)
read_until_between(Min, Max, Out) :-
    repeat,
    read_number(Out),
    Out >= Min,
    Max >= Out, !.

% f)
read_string([]) :- peek_code(10), !.
read_string([Code | T]) :-
    get_code(Code),
    read_string(T).

% g)
banner :-
    write('Text: '), read_string(Text),
    write('Symbol: '), get_char(Symbol),
    write('Padding: '), read_number(Padding),
    print_banner(Text, Symbol, Padding).

% h)
max_length([], 0).
max_length([T], L) :- length(T, L).
max_length([H | T], ML) :-
    max_length(T, CL),
    length(H, L),
    (
        L >= CL, ML = L, !;
        ML = CL
    ).

print_banner_sentences([], _, _) :- !.
print_banner_sentences([H | T], Symbol, Width) :-
    print_banner_sentence(H, Symbol, Width), nl,
    print_banner_sentences(T, Symbol, Width).

print_multi_banner(ListOfTexts, Symbol, Padding) :-
    max_length(ListOfTexts, Len),
    Width is Len + Padding * 2 + 2,
    print_banner_symbols(Symbol, Width), nl,
    print_banner_blank(Symbol, Width), nl,
    print_banner_sentences(ListOfTexts, Symbol, Width),
    print_banner_blank(Symbol, Width), nl,
    print_banner_symbols(Symbol, Width), !.

% i)
oh_christmas_tree(_, 0) :- !.
oh_christmas_tree(P, N) :-
    NewN is N - 1,
    NewP is P + 1,
    oh_christmas_tree(NewP, NewN),
    print_n(' ', P),
    ActualN is N * 2 - 1,
    print_n('*', ActualN), nl.

oh_christmas_tree(N) :-
    oh_christmas_tree(0, N),
    P is N - 1,
    print_n(' ', P),
    write('*').
