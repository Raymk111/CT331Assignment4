isElementInList(ELEM, [ELEM|_]).

isElementInList(ELEM, [_|TAIL]) :- isElementInList(ELEM,TAIL).

conCat([], L, L).

conCat([H|L1], L2, [H|RES]):- conCat(L1, L2, RES).

reverseL([], []).

reverseL([H|L1], RES):- conCat(NEWRES, [H], RES), reverseL(L1, NEWRES).

insertToEnd(EL, L1, RES):- conCat(L1, [EL], RES).