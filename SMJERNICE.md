# my24 — smjernice za redizajn

Sve što je dogovoreno u razgovoru o novom izgledu i toku unosa. Ovo je izvor istine:
prije svakog prijedloga ili mockupa provjeriti da ga ništa ovdje ne krši.

## Platforma i tehnika
- Samo **Android**. Pravi widget, ne HTML mockup.
- **Bez AI-a u radu aplikacije.** Sve je isprogramirano i deterministično (pravila, medijani, usporedbe).

## Vizualni stil
- **Vizualni stil se ne mijenja**: postojeći tokeni (`--bg #F1F1EE`, `--surface`, `--line`…),
  kutovi 3–4 px, Archivo + IBM Plex Mono, postojeće ikone kategorija.
- **Aplikacija mora izgledati jako jednostavno.** Sačuvati prednosti jednostavnog vizualnog stila.
- **Većina tipki je crno-bijela.** Boja kategorije samo kao tanka crtica uz naziv
  (iznimka: kartica onoga što trenutno traje, kao u postojećoj aplikaciji). Crvena samo za rupe i upozorenja.
- **Kockaste tipke** su dobre, ali **ne ogromne**.
- **Bez praznog prostora.** Svaki dio ekrana mora nešto nositi.
- **Malo teksta.** Vremena i oblici umjesto rečenica. Tekst samo gdje je nužan.
- Proporcionalna vremenska crta (blokovi visine po trajanju) je **ružna i neefikasna**. Ne koristiti.

## Struktura
- Popis dana zauzima previše mjesta. Mora biti elegantniji i **ne uvijek vidljiv**.
- Kalendar je u **posebnom tabu/prozoru**. Vidljivi kalendar pokazuje samo **nekoliko događaja**, bez praznog prostora.
- **Analiza duboko skrivena.**
- **Brzih radnji nema.** Postoje samo **kategorije** i **nazivi**.
- Kategorija = **sličica + riječ** (boja se dodjeljuje sama). Kategorije se smiju izmisliti.
- Kad se odabere kategorija, nudi se **nekoliko naziva** (ranije korišteni s tom kategorijom).
- **Opis** korisnik tipka sam, svaki put. Ništa se ne predlaže.
- Kategorije nisu odvojene od unosa novog događaja.
- Stvaranje kategorija u početku ne skrivati, svaka je **jedan dodir** daleko.

## Cilj
- **15 puta po 5 sekundi dnevno** je normalna i učinkovita upotreba.
- **Svaka minuta mora biti unesena**, a ljudi nemaju vremena trošiti ga na aplikaciju.
- Navika unosa gradi se **pri kraju aktivnosti**, a usput se brzo stavi i ono što je upravo počelo.
- Aplikacija je **uvijek sugestivna**, ali jednako brzo dopušta i nešto drugo od onoga što misli.
- **Na prvi pogled se vidi sve za najbrži unos**, a ne kalendar.
- Trenutni dizajn aplikacije je **uzor u vizualnom smislu**.
- Tipke play/stop (▶ ■): odabir i izvedba prepušteni dizajnu.

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

## Tok (dogovoreno)
- **PRIORITET BR. 1: sve upute spojene u jedan glatki, brz i jednostavan tok.** Radije malo mogućnosti
  nego da se osoba spotiče. Svaka opcija ima svoje mjesto, vidljivost i prioritet.
- **▶ znači da nešto počinje sad.** Ako je prije toga ostala rupa, aplikacija **nakon toga** traži da se
  popuni što je bilo u međuvremenu.
- **■ znači da je nešto završilo.** Podrazumijeva se da je počelo kad je završila zadnja upisana
  aktivnost, ali s 2–3 dodira mora se moći upisati da je počelo kasnije. Odmah potom se signalizira
  da se popuni rupa koja je time nastala.
- **Kako se „pita” je ključno pitanje dizajna** (svijetljenje, animacija, tekst, upitnik…).
- Zadano je **jedan dodir na tipku s nazivom kategorije**. Jednako lako se upisuje **vlastiti naziv**
  i po volji **opis**. Ako događaj ima opis, uz njega stoji **mala ikonica**.
- Mora se moći ući u **kalendar**, a sve dogovoreno mora biti dostupno.

## Jednostavnost (dogovoreno)
- **Izgubili smo jednostavnost i lakoću korištenja. Vratiti ih je prioritet.**
- Na popisu se navodi **samo vrijeme početka**. Kraj se podrazumijeva: traje do početka sljedećeg.
- Svaki događaj mora se moći **urediti i obrisati**.
- Promjena se radi tako da se **unutar bloka postavi vrijeme kad je nešto drugo počelo**
  (blok se dijeli na 2 ili više aktivnosti).
- Stari događaji nakon nekog vremena postaju nebitni i ne prikazuju se. Na glavnom ekranu je vidljivo
  vrlo malo događaja.
- Mora se moći **unaprijed postaviti događaj** koji počinje kasnije (npr. spavanje u 23:45, a sad je 23:23).

## Niz početaka, bez praznina (dogovoreno)
- **Dodir na kategoriju ne pokreće odmah.** Otvara list te kategorije: nazivi, početak (zadano sad),
  opis i tipka **▶ Počni**.
- **Završi nije dovoljan sam za sebe:** u tom trenutku mora nešto novo početi, pa Završi otvara „Što sad?”.
- **Prazno vrijeme ružno izgleda i komplicira.** Nema crvenih rupa. Ono što nije upisano je
  **Nekategorizirano** (naziv ovisi o jeziku; korisnik govori hrvatski), i nudi se kao izbor.
- Mora se moći postaviti događaj koji počinje **sutra** (i više planova odjednom).
