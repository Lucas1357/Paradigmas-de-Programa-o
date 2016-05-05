% Questão Combate à Dengue

regra1a(C) :- nth1(If, C, f), If =< 3.   % A casa f deve ser uma das 3 primeiras

regra2a(C) :- nextto(h, g, C).   % A casa H deve ser visitada imediatamente antes da G

regra3a(C) :- nth1(Il, C, l), Il \= 1, Il \= 7. % A casa L não pode ser a primeira e nem a sétima

regra4a(C) :- nth1(Lm, C, m), (Lm = 1).   % A casa M deve ser a primeira ou a sétima 
regra4a(C) :- nth1(Lm, C, m), (Lm = 7).

regra5a(C) :- nth1(Lp, C, p), Lp >= 5, Lp =< 7.


% permutacoes (retirado do exemplo do estacionamento).
perm(List, [H|Perm]) :- delete(H, List, Rest), perm(Rest, Perm).
perm([],[]).
   
delete(X, [X|T], T).
delete(X, [H|T], [H|NT]) :- delete(X, T, NT).


% Regras combinadas

visitas(C) :-
    C = [_,_,_,_,_,_,_],
    Casas = [f,g,h,l,m,p,t],
    perm(Casas, C),
    regra1a(C),
    regra2a(C),
    regra3a(C),
    regra4a(C),
    regra5a(C).


% Para as consultas da questão dois
seqtlf(C) :- nextto(t,l,C), nextto(l,f,C). 
position(C) :- visitas(C), seqtlf(C).   


% Consultas

/* 
Questão 1. Qual das seguintes opções é uma lista
completa e correta da ordem que as sete casas devem
ser visitadas?
(A) F, T, H, L, P, G e M.
(B) H, G, F, L, T, P e M.
(C) L, T, F, H, G, M e P.
(D) M, F, D, H, L, G e T.
(E) M, L, H, G, F, P e T.
*/
% Questão 1
% ?- visitas([f,t,h,l,p,g,m]).
% ?- visitas([h,g,f,l,t,p,m]).
% ?- visitas([l,t,f,h,g,m,p]).
% ?- visitas([m,f,d,h,l,g,t]).
% ?- visitas([m,l,h,g,f,p,t]).


/*
Questão 2. Se em um trecho do percurso visitarmos
as casas T, L e F, exatamente nesta ordem, qual a
posição que G foi visitada?
*/
% Questão 2
% ?- position([_,g,_,_,_,_,_]).
% ?- position([_,_,g,_,_,_,_]).
% ?- position([_,_,_,g,_,_,_]).
% ?- position([_,_,_,_,g,_,_]).
% ?- position([_,_,_,_,_,g,_]).

/*
Questão 3. Se a casa H é a primeira a ser visitada,
qual a quarta casa a ser visitada?
(A) F.
(B) G.
(C) L.
(D) M.
(E) P.
*/
% Questão 3
% ?- visitas([h,_,_,f,_,_,_]).
% ?- visitas([h,_,_,g,_,_,_]).
% ?- visitas([h,_,_,l,_,_,_]).
% ?- visitas([h,_,_,m,_,_,_]).
% ?- visitas([h,_,_,p,_,_,_]).