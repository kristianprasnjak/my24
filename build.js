/* Jedan izvor istine: Kronos_moderniziran.html se kopira u www/index.html,
   odakle ga Capacitor pakira u aplikaciju. */
const fs = require('fs');
const path = require('path');

const SRC = 'Kronos_moderniziran.html';
const OUT = path.join('www', 'index.html');

fs.mkdirSync('www', { recursive: true });
fs.copyFileSync(SRC, OUT);
console.log('build: ' + SRC + ' -> ' + OUT + '  (' + fs.statSync(OUT).size + ' B)');
