edge('Makkah','Madinah').
edge('Makkah','Riyadh').
edge('Madinah','Makkah').
edge('Madinah','Taif').
edge('Madinah','Tabuk').
edge('Taif','Dammam').
edge('Taif','Tabuk').
edge('Tabuk','Taif').
edge('Qatif','Madinah').
edge('Qatif','Dammam').
edge('Dammam','Qatif').
edge('Dammam','Riyadh').
edge('Riyadh','Dammam').

travel(From,To,Path):-
    path(From,To,[From],P),
    reverse(P,Path).

path(X,X,P,P).
path(From,To,Visited,Path):-
    edge(From,X),
    not(member(X,Visited)),
    path(X,To,[X|Visited],Path).
