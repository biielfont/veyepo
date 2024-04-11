<h1 align="center">
  <br>
  <a href="http://www.amitmerchant.com/electron-markdownify"><img src="https://i.ibb.co/kmktG2K/Untitled-1.png" alt="Markdownify" width="300"></a>
  <br>
  VeyEpo
  <br>
</h1>
  <p align="center"> VeyEpo és un script de bash dissenyat per ajudar els estudiants a evitar que els professors vegin les seves pantalles utilitzant Veyon o Epoptes a l'aula. Permet als estudiants participar en activitats no disruptives durant l'hora de classe.</p>

<h4 align="center">
  
[![GitHub Stars](https://img.shields.io/github/stars/biielfont/veyepo.svg)](https://github.com/biielfont/veyepo/stargazers) [![GitHub Issues](https://img.shields.io/github/issues/biielfont/veyepo.svg)](https://github.com/biielfont/veyepo/issues) [![Current Version](https://img.shields.io/badge/version-2.1.1-green.svg)](https://github.com/biielfont/veyepo) 
  
</h4>

<p align="center">
  <a href="#característiques">Característiques</a> •
  <a href="#requisits">Requisits</a> •
  <a href="#ús">Ús</a> •
  <a href="#contribuint">Contribuint</a> •
  <a href="#llicència">Llicència</a>
</p>



## Característiques

- **Privadesa de la pantalla:** VeyEpo permet als estudiants desactivar temporalment la funció de monitorització o compartició de pantalla de Veyon o Epoptes, evitant que els professors vegin les seves 
                      pantalles.
- **Fàcil d'usar:** L'script és senzill d'utilitzar, amb una interfície fàcil d'utilitzar que permet als estudiants activar i desactivar el mode de privadesa amb una sola ordre.
- **Personalitzable:** VeyEpo permet personalitzar la configuració, com ara especificar la durada del mode de privadesa o afegir mesures de seguretat addicionals.
  
## Requisits

- **Linux:** VeyEpo està dissenyat per funcionar en sistemes operatius basats en Linux.
- **Veyon or Epoptes:** VeyEpo requereix que Veyon o Epoptes estiguin instal·lats al dispositiu de l'estudiant.
- **Bash:** L'script està escrit en Bash, de manera que cal un shell compatible amb Bash.

## Ús

1. Clona el repositori:

   ```bash
   git clone https://github.com/biielfont/VeyEpo.git
   ```

2. Navega a la carpeta del repositori:

   ```bash
   cd VeyEpo
   ```

3. Donali el permisos necessaris:

   ```bash
   chmod +x veyepo.sh
   ```

4. Executal:

   ```bash
   ./veyepo.sh
   ```

5. Deixeu que el terminal que executa l'script obert, automàticament matarà el procés quan el trobi.

## Contribuint

Les contribucions a VeyEpo són benvingudes i animades! Si teniu alguna millora, correcció d'errors o funcions noves per afegir, no dubteu a obrir una sol·licitud d'extracció.

1. Fork al repositori.
2. Crea una nova branch: `git checkout -b my-feature`.
3. Fes els teus canvis i envia el commit: `git commit -m 'Add some feature'`.
4. Enival a la branch: `git push origin my-feature`.
5. Obre una pull request.

## Llicència

VeyEpo is released under the [MIT License](LICENSE). Feel free to modify and distribute it as per your needs.
