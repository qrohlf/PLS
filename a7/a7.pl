member(X, [X|_]).
member(X, [_|T]) :- member(X, T).

remove(Y, [Y|Z], Z).
remove(X, [H|Y], [H|Z]) :-
    remove(X, Y, Z).