data utdata;
set inndata;
%if &aldersgr = barn %then %do;
where alder < 17;
%end;
run;

%macro makronavn;

SAS code

%mend;
