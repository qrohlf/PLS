member(X, [X|_]).
member(X, [_|T]) :- member(X, T).
remove(X, [X|Z], Z).
remove(X, [H|Y], [H|Z]) :- remove(X, Y, Z).