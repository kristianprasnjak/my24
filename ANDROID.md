# my24 — Android

Radni file je i dalje **`index.html`** (verzija 2, novi tok unosa; stara verzija je sačuvana kao `index-v1.html`). Otvara se dvoklikom i radi sam za sebe.
`build.js` ga kopira u `www/index.html`, odakle ga Capacitor pakira u aplikaciju — dakle
postoji samo jedan izvor istine i nema dvije verzije koje se razilaze.

## Prvo postavljanje

Treba ti Node.js i Android Studio (oboje rade na Windowsu).

> **Node mora biti 22 ili noviji.** Capacitor 8 odbija raditi na starijem.
> Provjeri s `node --version`; ako piše v20 ili manje, preuzmi LTS s
> <https://nodejs.org> i nakon instalacije **zatvori i ponovno otvori terminal**.

```
npm install @capacitor/core @capacitor/cli @capacitor/android
npm install @capacitor-community/sqlite @capacitor/filesystem @capacitor/share
npx cap add android
```

`capacitor.config.json` je već tu. Prije prve objave promijeni `appId` iz
`com.example.my24` u svoju domenu unatrag (npr. `hr.tvojaadresa.my24`) — nakon
objave se **ne može mijenjati**.

## Svaki put nakon izmjene HTML-a

```
npm run android
```

To kopira file, sinkronizira Capacitor i otvori Android Studio. Odatle ide Run na
uređaj ili emulator.

## Što se mijenja kad aplikacija radi na uređaju

Kod je već napisan tako da sam prepozna okolinu:

- **Pohrana.** `Store.open()` provjeri postoji li `CapacitorSQLite`. Ako da, radi
  SQLite bazu `my24` s tablicom `kv` i sve ide onamo. Ako ne, koristi IndexedDB.
  Ne treba mijenjati ništa u kodu.
- **Izvoz.** U pregledniku preuzima datoteku. Na uređaju je zapiše preko
  `Filesystem` i otvori sistemski izbornik dijeljenja.

Obje grane su napisane, ali je **SQLite grana provjerljiva tek na uređaju** —
u pregledniku se nikad ne izvršava.

## Preostalo prije objave

1. **Font.** Aplikacija sad povlači Archivo s Google Fontsa, dakle treba mrežu.
   Skini `Archivo` (OFL), stavi `.woff2` u `www/fonts/` i zamijeni `<link>` s
   `@font-face`. Tek tada je aplikacija stvarno offline.
2. **Ikone i splash.** `@capacitor/assets` iz jedne slike generira sve veličine.
3. **Lebdeći gumb.** Traži dozvolu `SYSTEM_ALERT_WINDOW` ("prikaz preko drugih
   aplikacija"). Korisnik je odobrava ručno u postavkama, a Google Play traži
   obrazloženje čemu služi. Trenutna izvedba u HTML-u je prototip ponašanja.
4. **Automatska kopija.** Android Auto Backup je uključen po zadanom i pokriva
   bazu aplikacije, dakle novi telefon vraća podatke s korisnikova Google računa.
   Provjeri da `android:allowBackup` ostane `true`.

## Podaci

Sve ostaje na uređaju. Nema servera, nema računa, nema slanja igdje.
Izvoz je jedina putanja podataka van, i pokreće je korisnik.
