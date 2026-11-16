# my24 — smjernice za redizajn

Sve što je dogovoreno u razgovoru o novom izgledu i toku unosa. Ovo je izvor istine:
prije svakog prijedloga ili mockupa provjeriti da ga ništa ovdje ne krši.

## Platforma i tehnika
- Samo **Android**. Pravi widget, ne HTML mockup.
- **Bez AI-a u radu aplikacije.** Sve je isprogramirano i deterministično (pravila, medijani, usporedbe).

## Vizualni stil
- **Vizualni stil se ne mijenja**: postojeći tokeni (`--bg #F1F1EE`, `--surface`, `--line`…),
  kutovi 3–4 px, Archivo + IBM Plex Mono, postojeće ikone kategorija.
- **Kockaste tipke** su dobre, ali **ne ogromne**.
- **Bez praznog prostora.** Svaki dio ekrana mora nešto nositi.
- **Malo teksta.** Vremena i oblici umjesto rečenica. Tekst samo gdje je nužan.
- Proporcionalna vremenska crta (blokovi visine po trajanju) je **ružna i neefikasna**. Ne koristiti.

## Struktura
- Popis dana zauzima previše mjesta. Mora biti elegantniji i **ne uvijek vidljiv**.
- Kalendar je u **posebnom tabu/prozoru**. Vidljivi kalendar pokazuje samo **nekoliko događaja**, bez praznog prostora.
- **Analiza duboko skrivena.**
- **Kategorije i brze radnje nisu odvojene od unosa novog događaja.**
- Stvaranje kategorija u početku ne skrivati, svaka je **jedan dodir** daleko.

## Unos
- Ljudi žive brzo: nema ulaženja u aplikaciju i tipkanja nakon svake aktivnosti.
- **Izbjegavati tipkanje i pretragu.**
- Kad ništa ne traje, cilj je što prije upisati što se radi.
- „Upravo počinje” i „upravo završava” nadovezuju se na novi događaj, kao i jednako intuitivno
  **„počelo je kad je završila zadnja aktivnost”**.
- Pitanja koja unos postavlja: **od kad?**, **dokad?** („završilo je tad” ili „još traje”).
- **Najčešće ponuđeno vrijeme je kraj prethodne aktivnosti.**
- Kad nešto traje i stisne se Završi, **pretpostavlja se što je završilo**, ali uvijek uz provjeru u jednom dodiru.
- Biti potpuno svjestan: što se podrazumijeva i kada, gdje tražiti potvrdu jednim dodirom, gdje s više,
  gdje uopće nuditi nešto složeno, što je vidljivo, a što nije.
- Skočne prozore koristiti pravilno i pravovremeno.
- **Povijest kao izvor prijedloga:** isto vrijeme jučer, prije tjedan dana i prije 2 tjedna.
- **Spavanje se najčešće podrazumijeva**, a pitanja o njemu mogu biti vrlo konkretna.
- **Jutro:** pita kad sam se probudio i kad sam zaspao. Ako sam zaspao kasnije nego što je završila
  zadnja aktivnost (npr. 23:45, a zadnja do 22:00), pita što sam radio u toj rupi.
- **Ništa od toga nije čisti tekst.** Pitanja se postavljaju vizualno: redovi lanca dana, uokvireno
  aktivno polje, isprekidana rupa s trajanjem, kotačić, pločice.
- **Tekst nije zabranjen** kad je zaista puno korisniji nego da ga nema. Tada je to oznaka od jedne do
  dvije riječi uz element, nikad rečenica ili odlomak.

## Vrijeme
- **Jako oprezno s nuđenjem vremena.** Nikakvi automatski pomaci „−5 / −15 / −30 min”.
- **Nikakav popis vremena svakih 5 minuta.**
- **Nikakav sat s kazaljkama, tekstualni unos ni traka za povlačenje.**
- **Sat = dva kotačića (sati | minute)** kao u Android aplikaciji Sat (alarm): odabrana vrijednost velika
  u sredini, susjedne blijede iznad i ispod, korak 1 minuta.

## Način rada
- Prije prijedloga **proučiti aplikaciju i isprobati je** na vlastitoj koži.
- Misliti, a ne podilaziti. Reći kad se ne slažem i zašto.
