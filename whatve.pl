
changes_to([],_,_,[]).

changes_to([H|T],K,A,[H2|T2]):-
write("to kapa einai :" +K),nl,
write("to H einai :" +H),nl,nl,
changes_to(T,K,A,T2),H=H2,H=K,H2=A.



replace(_, _, [], []).
replace(O, R, [O|T], [R|T2]) :- replace(O, R, T, T2).
replace(O, R, [H|T], [H|T2]) :- H \= O, replace(O, R, T, T2).


range(Low, Low, _).
range(O,Low,High) :- NewLow is Low+1, NewLow =< High, range(O, NewLow, High). 
 
 
 numlist(L, U, Ns) :-
     must_be(integer, L),
      must_be(integer, U),
      L =< U,
    numlist_(L, U, Ns).
  
  
  
  numlist_(U, U, List) :-
    !,
      List = [U].
	  
	  
  numlist_(L, U, [L|Ns]) :-
     L2 is L+1,
      numlist_(L2, U, Ns).
  