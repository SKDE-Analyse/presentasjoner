
name: normal
layout: true
class: left, inverse

---
name: oppgave
layout: true
class: left

---
name: inverse
layout: true
class: center, middle, inverse
---
template: inverse

.title[SAS-makroer]

.subtitle[Internkurs ved SKDE]

.author[Arnfinn og Hanne Sigrun]

.date[Sjette desember 2017, Tromsø]

.footnote[Presentasjonen finnes her: [https://tinyurl.com/sasmakrokurs](https://tinyurl.com/sasmakrokurs)]


---
template: inverse

# Hva er en SAS-makro?

---
template: normal

# SAS-makro

```sas
%macro makronavn(parameter1 = , parameter2 = );

 /*
 Gjør noe her
 */ 

%mend;
```

---
template: normal

# SAS-makro

```sas
%macro makronavn(parameter1 = , parameter2 = );
 
%put NOTE: parameter1 er &parameter1;
%put NOTE: parameter2 er &parameter2;
 
%mend;
```



