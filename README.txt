MN - Algoritmul Google PageRank
->Acest program a fost implementat în Octave => Instalează octave

->Prima sarcină implementează versiunea iterativă a algoritmului
Fac matricea sistemului în care dacă există o legătură de la i la j atunci avem o legătură și punem 1 în M [i] [j].

În același timp, aflu vectorul de legătură.

Găsesc matricea de legături M și o calculez conform formulei.

Iterațiile se opresc atunci când diferența dintre doi vectori Pagerank consecutivi este mai mică decât eroarea dată

->A doua cerință implică implementarea algebrică a algoritmului
Aceeași poveste ca mai sus, dar va trebui să calculați rangul știind că : R = (d*M + ( 1 - D)/ nr*E)*R cu E*R= 1, deci

R = (I - d*M)^(-1) * ( 1 - d ) / nr

Ultima relație reprezintă un sistem triunghiular superior, care se rezolvă prin metoda SST() - algoritm implementat in cdrul laboratorului.

Pentru a treia cerință am pus toate datele în dosar. :)
Am sortat vectorul descendent și am căutat poziția inițială a fiecărui element din vectorul sortat în cel inițial

Pentru a afla afilierea am aplicat funcția U(X) și am găsit valorile variabilelor a și b conform val_1 și val_2 cunoscute.

Pentru a găsi cele două variabile a si b faceți un sistem la limita val1 și val2:

1 = aval2 + b
0 = aval1 + b
---------------> scade
1 = a(val2 - val1)
b = a - a * val1

-> Feedback:
    Un subiect foarte interesant care m-a făcut destul de curios cu privire la ceea ce se întâmplă în spatele unui motor de căutare pe care îl folosesc zilnic.
Multumiri autorilor :)