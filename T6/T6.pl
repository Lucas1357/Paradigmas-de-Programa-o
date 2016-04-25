% 1
zeroInit([H | T]) :- H =:= 0. 

% 2
has5(L) :- L = [_,_,_,_,_]. 

% 3
hasN([], 0).
hasN([H|T],N) :- N > 0, N1 is N - 1, hasN(T, N1).

% 4
potN0(0, [1]).
potN0(N, [H|T]) :- H is 2^N, N1 is N-1, potN0(N1, T).

% 5
zipmult([],_,[]).
zipmult(_,[],[]).
zipmult([H|T],[H2|T2],[H3|T3]) :- H3 is H2 * H, zipmult(T, T2, T3).

% 6
aux(_,0,[]).
aux(N, M, [H|T]) :- M > 0, H is 2^(N-M), M1 is M-1, aux(N, M1, T).

potencias(N, L) :- aux(N, N, L).

%7
positivos([],[]).
positivos([H|T],L) :- H>0, L = [A|B], A is H, positivos(T, B).
positivos([H|T],L) :- H =< 0, positivos(T, L).

%8
mesmaPosicao(A, [H1|T1], [H2|T2]) :- A = H1, H1 = H2; mesmaPosicao(A, T1, T2).

%9
comissao(0, [], []).
comissao(NP,[H|T],L) :- NP>0, L=[A|B], A is H, NP1 is NP-1, comissao(NP1, T, B); comissao(NP, T, L). 

%10
aux2(NA, SQ, SQI) :- SQ is sqrt(NA), SQI is floor(SQ).

azulejos(0, 0).
azulejos(NA, NQ) :-NA > 0, aux2(NA, SQ, SQI), NA2 is NA -SQI^2, azulejos(NA2, NQ2), NQ is 1+NQ2.

 


