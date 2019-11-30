

Functia read_input_data.m. Pentru a  citi datele de intrare din cele 2 tipuri de fisiere .param si .points, le-am deschis cu fopen , am citit  numerele din .param cu fscanf , si am citit valorile din fisierele .points  cu dlmread.

                                              _-_

Functia clustering_pc.m. returneaza  centroizii corespunzatori punctelor date folosind algoritmul K Means.
O solutie nefavorabila , va fi  daca atribuim numarul de clustere apropiat de numarul de puncte, in acest caz este inutil sa generam aleator centroizi. 
Am verificat fiecare punct si l-am atribuit clusterului. Am calculat distanta de la fiecare centroid la puncte.
d = ((sum(((x - y).^2)')).^(1/2))'.
Apoi am luat distanta minima si indexul centroidului pentru care a fost calculat intr-o matrice.
Apoi am recalculat noile pozitii. 
In  cazul in care nu avem punct favorabil pentru centroid si am facut o verificare si am  incercat sa gasesc unul mai bun. 




Prin functia view_clusters.m reprezint rezultatul algoritmului K-Means sub forma unui grafic in care punctele unui grup au aceelasi culoare. Prin for verific fiecare punct si il atribui unui cluster.
Calculez si distanta de la punct la centroid  si intr-un vector cu distanta si indexul  centroidului pentru care a fost calculat atribui distanta minima 
Desenez figura cu scatter3 activand rotate3d pentru o mai simpla manevrare a figurii.
-________________________________________________-



Functia compute_cost_pc ce primeste ca parametri punctele si centroizii si intoarce suma costurilor tuturor clusterilor. Am calculat distanta de punct la fiecare centroid in care se afla   pe care am adaugat-o in variabila cost.
-__________________________________________________-



Functia view_cost_vs_nc.m traseaza graficul costului total in functie de numarul de clustere de la 1 la 10 , folosind functiile facute anterior , (am  facut si vectorul y in care am retinut costul).
