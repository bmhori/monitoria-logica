p([Head | Tail], Head, Tail).
% X eh membro de uma lista cujo o primeiro membro eh X
membro(X,[X|L]).
%X eh membro de uma lista cuja o tail eh L se X for membro de L
membro(X,[Y|L]) :- member(X,L).

