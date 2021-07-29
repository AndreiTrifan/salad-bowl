# u_win

A new Flutter project.

## Getting Started

FLUXUL DE LUCRU
1.	Iti este asignat un task
2.	Te duci pe branch-ul develop
3.	Dai pull
4.	Iti creezi un branch nou, pornind din develop
5.	Rezolvi task-ul
6.	Cand consideri ca ai terminat, dai commit, push in branch-ul pe care ai lucrat
7.	Faci pull request in develop
8.	Cineva va verifica si va lasa observatii, daca este cazul
9.	Faci modificarile conform obervatiilor
10.	Se reia fluxul de la pasii 6, 7, 8 pana cand vei primi statusul approved din partea celui care a verificat
11.	Dai merge in develop (de pe git) – daca merge-ul are conflicte, ne poti da un semn
12.	Incepi un alt task si se reiau pasii 1-11

CONVENTII DE LUCRU
1.	Exista 3 tipuri de importuri: importuri din dart, importuri din pachete si importuri din filele proiectului. Intre aceste tipuri se lasa un rand liber;
2.	Importurile din filele proiectului se scriu cu cale relativa;
3.	Clasele se scriu cu CamelCase (ex. NewClass);
4.	Functiile si variabilele se scriu cu camelCase (ex. newFunction);
5.	Filele, folderele si branch-urile se scriu cu lowercase si se despart prin underscore (ex. new_file, new_folder, new_branch);
6.	Mesajul unui commit trebuie sa cuprinda id-ul issue-ului sau issue-urilor la care s-a lucrat si sa prezinte concis task-ul (ex. Empty screen done - #id, implemented checkWidgetParameters function - #id & #id, bug fixed for Loading screen - #id, added mock data for Home screen - #id);
7.	Orice widget Text trebuie sa aiba style; orice widget Icon trebuie sa aiba size, orice imagine trebuie sa aiba dimensiunile calculate in functie de dimensiunile telefonului
8.	Nu se scriu in mod explicit, in niciun caz, style-urile textului, dimensiunile, culorile, valoarea padding-ului, valoarea marginilor, border radius-ul. In general nu exista valori explicite in cod, inafara celor din fisierul de standarde (utils-> standards-> style_standards.dart). E posibil sa fie necesare particularitati, dar inainte trebuie sa ne asiguram ca nu ne putem folosi de standarde; daca intalniti cazuri de acest gen, discutam;
9.	Exista, in folderul utils-> standards, mai multe widget-uri standard care vor fi folosite in intreaga aplicatie. Acest lucru inseamna ca de fiecare data cand va fi nevoie de spacing, imagine, buton, icon, card, padding, loading, acestea sunt widget-urile care trebuie folosite. Din nou, exista particularitati, si le vom discuta subiectiv, daca este cazul. Asa ca inainte de crearea unui widget, trebuie verificat acest folder. Facem acest lucru pentru a avea o consecventa a design-ului si pentru a ne usura ulterior munca (de exemplu, daca in viitor vom vrea sa schimbam culoarea loading-ului din toate locurile unde apare in aplicatie, va fi nevoie sa schimbam doar in StandardLoading si se va actualiza automat peste tot);
10.	Daca se doreste adaugarea unor valori default unor parametrii, atunci ar fi indicat ca aceastea sa se puna in cadrul constructorului;
11.	Daca mai multe linii de cod se repeta, atunci ar fi indicat sa se creeze o functie privata, sau un widget privat, dupa caz;
12.	Daca o linie de cod se repeta de cel putin 2 ori, ar fi indicat sa se creeze o variabila (de ex. textScaleFactor, deviceWidth, deviceHeight, mediaQuery, text style-ul unui String);
13.	Daca un widget se repeta pe cel putin 2 ecrane, atunci putem discuta o transformare a acestuia intr-un widget standard;
14.	Pentru calcularea unor constrangeri de latime sau inaltime, ar fi indicat sa se creeze o functie privata;
15.	Daca se doreste aranjarea codul frumos folosind shortcut-ul oferit de IDE (AS si IJ-> ctrl+alt+l, VSC-> alt+shift+f), trebuie selectate doar liniile pe care au fost facute modificari;
16.	Toate ecranele inafara de cele 4 din nav bar, trebuie sa returneze un AppLayoutWidget, iar pe child se va crea ecranul in sine;
17.	Toate denumirile le punem in engleza, iar pentru ecrane adaugam si Screen la sfarsit ca sa fim mai expliciti;
