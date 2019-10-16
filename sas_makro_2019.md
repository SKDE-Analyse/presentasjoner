<!-- .slide: data-background-image="https://github.com/SKDE-Analyse/presentasjoner/raw/master/bg_front_wide.png" -->
<!-- .slide: data-transition="none" -->

# SAS-makroer

Internkurs ved SKDE, 16. okt. 2019

---

<!-- .slide: data-background-image="https://github.com/SKDE-Analyse/presentasjoner/raw/master/bg_wide.png" -->
<!-- .slide: data-transition="none" -->
<!-- .slide: style="text-align: left;"> -->

## Hva er en SAS-makro?

Selve makroen:

```
%macro makronavn;

SAS-kode;

%mend;
```

Kjøre makroen:

```
%makronavn;
```

---

<!-- .slide: data-background-image="https://github.com/SKDE-Analyse/presentasjoner/raw/master/bg_wide.png" -->
<!-- .slide: data-transition="none" -->
<!-- .slide: style="text-align: left;"> -->

## Makrovariabler

Defineres ved
- med et *let-statement* (global):

```
%let var_name = value;
```

- å sende den inn i makro (lokal):

```
%macro makronavn(var_name = value);
```

---

<!-- .slide: data-background-image="https://github.com/SKDE-Analyse/presentasjoner/raw/master/bg_wide.png" -->
<!-- .slide: data-transition="none" -->
<!-- .slide: style="text-align: left;"> -->

## Makrovariabler

Kan så brukes med `&` foran:
<small>
```
%let datasett = mittdatasett;
%let variabel = poli;
data &datasett;
set &datasett;
&variabel._unik = .;
by eoc_aar &variabel pid eoc_inndato eoc_utdato;
if first.pid and &variabel = 1 then &variabel._unik = 1;	
run;
```

```
data mittdatasett;
set mittdatasett;
poli_unik = .;
by eoc_aar poli pid eoc_inndato eoc_utdato;
if first.pid and poli = 1 then poli_unik = 1;	
run;
```
</small>

---

<!-- .slide: data-background-image="https://github.com/SKDE-Analyse/presentasjoner/raw/master/bg_wide.png" -->
<!-- .slide: data-transition="none" -->
<!-- .slide: style="text-align: left;"> -->

## Makrovariabler

Inne i makro kan makro-variabler brukes i spesielle *if-statements*

```
data utdata;
set inndata;
%if &aldersgr = barn %then %do;
where alder < 17;
%end;
run;
```

---

<!-- .slide: data-background-image="https://github.com/SKDE-Analyse/presentasjoner/raw/master/bg_wide.png" -->
<!-- .slide: data-transition="none" -->
<!-- .slide: style="text-align: left;"> -->

## Argumenter

Selve makroen:
<pre><code class="sas">%macro makronavn(argument1 = , argument2 = );
 
%put NOTE: argument1 er &argument1;
%put NOTE: argument2 er &argument2;
 
%mend;
</code></pre>

<p>Kjøres slik:</p>
<pre><code class="sas">%makronavn(argument1 = ditt, argument2 = datt);
</code></pre>

---

<!-- .slide: data-background-image="https://github.com/SKDE-Analyse/presentasjoner/raw/master/bg_wide.png" -->
<!-- .slide: data-transition="none" -->
<!-- .slide: style="text-align: left;"> -->

## Argumenter

Selve makroen:
<pre><code class="sas">%macro makronavn(argument1 = default1, argument2 = default2);
 
%put NOTE: argument1 er &argument1;
%put NOTE: argument2 er &argument2;
 
%mend;
</code></pre>

Kan kjøres slik:
<pre><code class="sas">%makronavn;</code></pre>

---

<!-- .slide: data-background-image="https://github.com/SKDE-Analyse/presentasjoner/raw/master/bg_wide.png" -->
<!-- .slide: data-transition="none" -->

# Oppgave

--

<!-- .slide: data-background-image="https://github.com/SKDE-Analyse/presentasjoner/raw/master/bg_wide.png" -->
<!-- .slide: data-transition="none" -->
<!-- .slide: style="text-align: left;"> -->

## Oppgave
<small>
```
%macro makronavn(argument1 = default1, argument2 = default2);
 
%put NOTE: argument1 er &argument1;
%put NOTE: argument2 er &argument2;
 
%mend;
```

<ol>
<li>Kjør makroen med og uten argumenter. Hva blir resultatet?</li>
<li>Prøv å kjøre følgende kode utenfor makroen:
<pre><code class="plaintext">%put NOTE: argument1 er &argument1;</code></pre>
</li>
<li>Lag tilsvarende makro som ikke tar argumenter, ved bruk av *makrovariabler*. Er det noen fordeler eller ulemper ved å gjøre det slik?
<pre><code class="plaintext">%let argument1 = ...;</code></pre>
</li>
</ol>
</small>

--

<!-- .slide: data-background-image="https://github.com/SKDE-Analyse/presentasjoner/raw/master/bg_wide.png" -->
<!-- .slide: data-transition="none" -->
<!-- .slide: style="text-align: left;"> -->

## Oppgave

<small>

<pre><code class="sas">%macro makronavn(argument1 = default1, argument2 = default2);
 
%put NOTE: argument1 er &argument1;
%put NOTE: argument2 er &argument2;
 
%mend;
</code></pre>

<ol start=4>
<li>Ekstraoppgave: bytt ut `NOTE` med `ERROR`. Hva skjer i loggen? Hvordan kan man bruke dette i en makro? Hvilken konsekvens får dette?</li>
</ol>
<br>
<br>
<br>
<br>

</small>
<br>

---


<!-- .slide: data-background-image="https://github.com/SKDE-Analyse/presentasjoner/raw/master/bg_wide.png" -->
<!-- .slide: data-transition="none" -->
<!-- .slide: style="text-align: left;"> -->

## Eksempel

Legge til `bohf` etc. i et datasett, ved bruk av `boomraader`-makroen:

```
data avd;
set skde19.t19_magnus_avd_2018;
%boomraader;
run;
```

---

<!-- .slide: data-background-image="https://github.com/SKDE-Analyse/presentasjoner/raw/master/bg_wide.png" -->
<!-- .slide: data-transition="none" -->

# Oppgave

--

<!-- .slide: data-background-image="https://github.com/SKDE-Analyse/presentasjoner/raw/master/bg_wide.png" -->
<!-- .slide: data-transition="none" -->
<!-- .slide: style="text-align: left;"> -->

## Oppgave

<small>

```
data avd;
set skde19.t19_magnus_avd_2018;
%boomraader;
run;
```

Kjøre `boomraade`-makroen på `avd` slik at *Bergen* blir splittet på boområdene *Bergen* og *Haraldsplass*.

</small>


