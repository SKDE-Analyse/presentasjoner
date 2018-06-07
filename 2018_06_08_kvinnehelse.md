name: blank
layout: true

---
name: reduced
layout: true
class: left
background-image: url(bg_wide_reduced.png?1)


---
name: front
layout: true
class: center, middle
background-image: url(bg_front_wide.png?1)

---
name: normal
layout: true
class: left
background-image: url(bg_wide.png?1)

---
template:front

.title[Veien videre]

.subtitle[Planlagte analyser]

---
template:normal
name: mfr
layout: true

# Planlagte analyser

---
template: mfr

## Data fra Medisinsk fødselsregister (MFR)

## Data fra KUHR

---
template: mfr

.left-column[
# MFR

## .svart[Fødsler]
]

.right-column[
- Fødsler totalt. .graa[Splittet på «starter spontant»/«med induksjon»/«med keisersnitt»]
- Starter med induksjon. .graa[Splittet på $\lt$41 uke,  41 uke,  $\gt$41 uke]
- Med epidural. .graa[Splittet på keisersnitt og vaginal fødsel]
- Med keisersnitt. .graa[Splittet på akutt og planlagt]
- Assistert vaginal forløsning. .graa[Splittet på tang og vakuum]
- Sfinkterruptur grad 3 og 4
- Blødning over 500 ml
- Med episiotomi
]
???

- Keisersnitt uansett start

---

template: mfr

.left-column[
# MFR

## .trans[Fødsler]
## .svart[Liggetid]
]

.right-column[
Liggetid
- for vaginal fødsel
- for keisersnitt
- for førstegangsfødende 
- for ikke-førstegangsfødende
]

---

template: mfr

.left-column[
# MFR

## .trans[Fødsler]
## .trans[Liggetid]
## .svart[Annet]
]

.right-column[
- Assistert befruktning. .graa[antall fødsler, IVF]
- Populasjonsbeskrivelse?<br><br>
.svart[Hvilke variabler fra MFR bør inngå i en populasjonsbeskrivelse av fødende kvinner?]

]

---
template: mfr

.left-column[
# KUHR
]

.right-column[
- Totaloversikt. .graa[Alle pasienter med diagnoser (ICPC2) som starter med X og W]
- Kontakter for postmenopausal blødning .graa[(X12)]
- Kontakter for prolaps av kvinnelig kjønnsorgan .graa[(X87)]
- Infertilitet .graa[(W15,Y10)]
- Blødningsforstyrrelser .graa[(]<b>X05?</b>.graa[, X06, X07, X08)]
- Endometriebiopsi .graa[(takst 214c)]
- <b>Kontakter ifm svangerskap</b>$^\ast$
.footnote[$^\ast$ &#8209;W95/W99 barsel eller svangerskap?<br>&nbsp;&nbsp;&nbsp;&#8209;Inkluderer 217c jordmor på helsestasjon?] 
- <b>Komplikasjoner/kontakter ifm barseltid</b>$^\ast$
- Spiral og p-stav .graa[(takst 214a ekskludert de med takst 149a)]
]

???

SPØRSMÅL: 
1.	Det er to tilstandskoder med overlapp svangerskap/barsel: W95, W99. Er disse kodene mye brukt? I hvilken av de to analysene er det mest riktig å ha med pasientkontakter med disse tilstandskodene?

2.	Dersom vi skal få et noenlunde komplett bilde av svangerskapsomsorgen er vi avhengige av å få med kontroller utført av jordmødre på helsestasjon. Takst 217c er definert som graviditetskontroll utført av jordmor, med forutsetningen at jordmor er ansatt hos den legen som utløser taksten. Er det slik at alle jordmødre ved kommunale helsestasjoner har et ansettelsesforhold hos en fastlege og dermed utløser denne taksten når de utfører en kontroll? Vil vi få med alle svangerskapskontroller utført av jordmor som inngår i den offentlig finansierte svangerskapsomsorgen ved å ha med kontroller med denne taksten? Hvis ikke, hvordan kan vi evt. få disse med?


---
template: normal
class: center, middle

# Hvilke analyser bør droppes?

---
template: reduced

.left-column[
# Hvilke analyser bør droppes?
]

.right-column[
.tiny[
<table class="oversikt">
<tr><th>Tema</th><th>Utvalg</th><th>Datakilde</th><th>Konsultasjoner</th><th>Inngrep</th></tr>
<tr><td>Gynekologiske undersøkelser</td><td>Kolposkopi</td><td>NPR</td><td class="tall">95423</td><td class="tall"></td></tr>
<tr><td></td><td>Diagn. av endometriet</td><td>NPR, KUHR</td><td class="tall">19096</td><td class="tall"></td></tr>
<tr><td>Prevensjon, sterilisering og abort</td><td>Innsetting av spiral</td><td>NPR, KUHR</td><td class="tall">16815</td><td class="tall"></td></tr>
<tr><td></td><td>Sterilisering </td><td>NPR</td><td class="tall"></td><td class="tall">.red[1072]</td></tr>
<tr><td></td><td>Spontanabort, kir. beh.</td><td>NPR</td><td class="tall"></td><td class="tall">.red[897]</td></tr>
<tr><td></td><td>Selvbestemt abort, 0-12</td><td>Abortreg.</td><td class="tall"></td><td class="tall">13000</td></tr>
<tr><td>Tilstander hos unge kvinner</td><td>Polic. ovariesyndrom</td><td>NPR</td><td class="tall">5038</td><td class="tall"></td></tr>
<tr><td></td><td>Endometriose</td><td>NPR</td><td class="tall">6904</td><td class="tall">.red[1160]</td></tr>
<tr><td>Svangerskap og fødsel</td><td>Infertilitet</td><td>NPR, KUHR</td><td class="tall">47492</td><td class="tall"></td></tr>
<tr><td></td><td>Ass. befruktning</td><td>NPR, MFR</td><td class="tall"></td><td class="tall">5776</td></tr>
<tr><td></td><td>Poliklinikk i svangerskap</td><td>NPR, KUHR</td><td class="tall">735560</td><td class="tall"></td></tr>
<tr><td></td><td>UL i svangerskap</td><td>NPR</td><td class="tall">463473</td><td class="tall"></td></tr>
<tr><td></td><td>Fødsel</td><td>MFR</td><td class="tall"></td><td class="tall"></td></tr>
<tr><td></td><td>Poliklinikk i barseltid</td><td>NPR, KUHR</td><td class="tall"></td><td class="tall"></td></tr>
<tr><td>Tilstander etter svangerskap og fødsel&nbsp;</td><td>Prolaps kv. kjønnsorgan</td><td>NPR, KUHR</td><td class="tall">24814</td><td class="tall">4027</td></tr>
<tr><td></td><td>Postmenopausal blødn.</td><td>NPR, KUHR</td><td class="tall">9490</td><td class="tall"></td></tr>
<tr><td></td><td>Urininkontinens</td><td>NPR</td><td class="tall">26604</td><td class="tall">2528</td></tr>
<tr><td></td><td>Kraftige/hyppige blødn.</td><td>NPR, KUHR</td><td class="tall">23745</td><td class="tall">3080</td></tr>
<tr><td></td><td>Myom i livmor</td><td>NPR</td><td class="tall">23255</td><td class="tall">2105</td></tr>
<tr><td></td><td>Hysterektomi</td><td>NPR</td><td class="tall"></td><td class="tall">1241</td></tr>
<tr><td></td><td>Brystreduksjon</td><td>NPR</td><td class="tall"></td><td class="tall">1932</td></tr>
<tr><td></td><td>Brystrekonstruksjon</td><td>NPR</td><td class="tall"></td><td class="tall">1846</td></tr>
</table>
]
]

???

### Velg tre (eller flere) analyser som kan/bør droppes, av de vi har vist resultater for og de planlagte



---
template: normal
class: center, middle

# Andre analyser?

---
template: normal

# Andre analyser?

.right-column[
### Vaginal ultralyd?
### Andre gynekologiske undersøkelser?
### Andre aktuelle tilstander?
]
---
template: blank

---
template:front

.title[Veien videre]

.subtitle[Rapport og faktaark]

---
template:normal

# Rapporten

<div style="width: 95%;">
   <div style="float:right; width: 50%;">
<img src="fig/kvinne_front.png?1" width="75%" height=auto>
   </div>
   <div style="float:left; width: 50%; padding-top: 2em;">
Inneholder
<ul>
<li> Sammendrag </li>
<li> Innledning </li>
<li> Metodekapittel </li>
<li> Resultatkapitler </li>
<li> Drøftingskapittel </li>
<li> Oppsummering og konklusjon </li>
<li> Referanseliste </li>
</ul>
   </div>
</div>
<div style="clear:both"></div>

---
template:normal

# Faktaarkene

<div style="width: 95%;">
   <div style="float:left;width: 50%; padding-top: 2em;">
   Ett faktaark pr. fagområde
   <ul>
   <li> For folk flest </li>
   <li> To-tre figurer </li>
<li> Bakgrunn, om resultatene, og kommentar </li>
<li> Lages etter at førsteutkastet til rapporten er ferdig </li>
</ul>
   </div>
   <div style="float:right; width: 50%;">
   <img src="fig/faktaark.png?1" width="75%" height=auto>
   </div>
</div>
<div style="clear:both"></div>


---
template:normal

# Rapporten

.left-column[

## Hva gjør vi

]

.right-column[

Vi ved SKDE vil skrive store deler av rapporten, inkludert
- Innledning
- Beskrivelse av utvalg
- Beskrivelse av resultater
- Diskusjon
- Konklusjonene
]

---
template:normal

# Rapporten

.left-column[

## .trans[Hva gjør vi]

## Hva vi håper å få hjelp til

]

.right-column[

- Kvalitetssikre utvalget
- Lese gjennom og vurdere beskrivelsen av utvalget
- Innledende tekst om de ulike fagområder
- Tolkninger av funn i lys av relevant faglitteratur
- Vurdere om det kan foreligge uberettiget variasjon
]

---
template: reduced

# Rapporten

.left-column[

## .trans[Hva gjør vi]

## Hva vi håper å få hjelp til

]

.right-column[
- Kvalitetssikre utvalget
- Lese gjennom og vurdere beskrivelsen av utvalget
- Innledende tekst om de ulike fagområder
- Tolkninger av funn i lys av relevant faglitteratur
- Vurdere om det kan foreligge uberettiget variasjon
]

<div style="float:left;width: 80%; padding-top: 1em;">
     <img src="fig/tidsskjema.png?1" width="100%" height=auto align="bottom">
</div>

