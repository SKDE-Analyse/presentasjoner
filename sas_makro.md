name: inverse
class: center, middle, inverse
layout: true

---
template: inverse

# SAS-makroer

.subtitle[Internkurs ved SKDE]

.author[Arnfinn og Hanne Sigrun]

.date[Sjette desember 2017, Tromsø]

.left[.footnote[Presentasjonen er lagd med [Remark](http://github.com/gnab/remark) ved hjelp av [cicero.xyz](http://cicero.xyz).]]

---
template: inverse

.center[<img id='barcode' 
            src="https://api.qrserver.com/v1/create-qr-code/?data=http://cicero.xyz/v2/remark/github/SKDE-Analyse/presentasjoner/master/\
sas_makro.md&amp;size=350x350" 
            alt="" 
            title="Presentasjonen" 
            width="350" 
            height="350" />]


.left[.footnote[Skann kode for link til presentasjon]]

---
name: title
class: center, middle, inverse

# Hva er en SAS-makro?

---
name: normal
layout: true
class: left, inverse

---
template: normal

# Hva er en SAS-makro?

```sas
%macro makronavn(...);

 /*
 Gjør noe her
 */ 

%mend;
```

--
```sas
 /*
kode
 */

 /* Kjøre makro */
%makronavn;

 /*
mer kode
 */
```

---
layout: false
class: center, inverse

# Hvorfor bruke makroer?

--

## Latskap

--

## Oversiktlig

--

## Gjenbruk av kode

--

## Færre feil?


---
template: inverse

# Argumenter

---
template: normal

# Argumenter

```sas
%macro makronavn(argument1 = , argument2 = );
 
%put NOTE: argument1 er &argument1;
%put NOTE: argument2 er &argument2;
 
%mend;
```


--

Kjøres slik:

```sas
%makronavn(argument1 = ditt, argument2 = datt);
```

---
template: normal

# Argumenter

```sas
%macro makronavn(argument1 = default1, argument2 = default2);
 
%put NOTE: argument1 er &argument1;
%put NOTE: argument2 er &argument2;
 
%mend;
```

Kjøres slik:

```sas
%makronavn(argument1 = ditt, argument2 = datt);
```

--
Eller slik
```sas
%makronavn;
```


---
template: inverse

# Oppgave

---
name: oppgave
layout: true
class: left

---
template: oppgave

# Oppgave

```sas
%macro makronavn(argument1 = default1, argument2 = default2);
 
%put NOTE: argument1 er &argument1;
%put NOTE: argument2 er &argument2;
 
%mend;
```

1. Kjør makroen med og uten argumenter. Hva blir resultatet?
2. Prøv å kjøre koden `%put NOTE: argument1 er &argument1;` utenfor makroen.
3. Lag tilsvarende makro som ikke tar argumenter, ved bruk av *makrovariabler* (`%let ...;`). Er det noen fordeler eller ulemper ved å gjøre det slik?
4. Ekstraoppgave: bytt ut `NOTE` med `ERROR`. Hva skjer i loggen? Hvordan kan man bruke dette i en makro? Hvilken konsekvens får dette?

---
template: inverse

# Felles makroer

---
template: normal

# Felles makroer

- Disse ligger på `\\tos-sas-skde-01\SKDE_SAS\Makroer\master` og kan brukes ved å legge inn følgende i sas-programmet
```sas
%let filbane=\\tos-sas-skde-01\SKDE_SAS\;
options sasautos=("&filbane.Makroer\master" SASAUTOS);
```

--

- Eksempel: legge til `bohf` etc. i et datasett, ved bruk av `boomraader`-makroen:
```sas
data avd;
set npr_skde.T17_magnus_avd_2016;
%boomraader;
run;
```

--
- Kan bruke andre definisjoner av boområder, ved å sende inn argumenter.

--
- Dokumentasjon finnes her: [skde-analyse.github.io/sas_macroer](http://skde-analyse.github.io/sas_macroer/)

---
template: inverse

# Oppgave

---
template: oppgave

# Oppgave

```sas
data avd;
set npr_skde.T17_magnus_avd_2016;
%boomraader;
run;
```

1. Kjøre `boomraade`-makroen på `npr_skde.T17_magnus_avd_2016` slik at *Bergen* blir splittet på boområdene *Bergen* og *Haraldsplass*.
2. Se på kildekoden til makroen `VarFraParvus`. Hva gjør den og hvordan gjør den det? Kjør makroen `VarFraParvus` med `avd`-datasettet (hent f.eks *emigrertDato*).

---
template: inverse

# Bivirkninger

---
template: normal

# Bivirkninger ("Side effects")

- En makro som ikke har bivirkninger vil kun returnere *verdier*, basert på hva man sender inn.

--

- Makroene våre har neste alltid bivirkninger:
  - Legger til verdier i datasett
  - Lager nye datasett
  - Lager andre filer og output

--
- Noe man må være klar over når man lager makroer, spesielt hvis de skal brukes av andre.
  - Den som kjører makroen burde vite hva slags bivirkninger makroen gir
  - Den som lager makroen burde sørge for at makroen ikke gir uønskede bivirkninger

---
template: inverse

# Oppgave

---
template: oppgave

# Oppgave

1. Førte makroen `boomraader` til noen bivirkninger i forrige oppgave? Hvis ja, Kan det være noen av disse var uønskede?
2. Kjør makroen `VarFraParvus` med `avd`-datasettet (hent f.eks *emigrertDato*), men fjern først `aar`-variablen (`drop aar`). Hva skjer med datasettet ditt? Har du forslag til forbedringer av denne makroen?

---
template: inverse

# Oppgave

---
template: oppgave

# Oppgave


1. Tell antall avdelingsopphold (kontakter) i 2016 for menn i følgende aldersgrupper, uten bruk av makro og presenter i tabell:

| Gruppe | Alder |
| --- | ---: | 
| 1 | 0-9 år   |
| 2 | 10-19 år |
| 3 | 20-29 år |
| 4 | 30-39 år |
| 5 | 40-49 år |
| 6 | 50-59 år |
| 7 | 60-69 år |
| 8 | 70-79 år |
| 9 | 80-89 år |

2. Gjør det så med en makro.

--
3. gjør det heller for kvinner.

