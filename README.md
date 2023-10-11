#VeyEpo

VeyEpo és un script de bash dissenyat per ajudar els estudiants a evitar que els professors vegin les seves pantalles utilitzant Veyon o Epoptes a l'aula. Permet als estudiants participar en activitats no disruptives durant l'hora de classe.

## Table of Contents
- [Features](#features)
- [Requirements](#requirements)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Screen Privacy:** VeyEpo permet als estudiants desactivar temporalment la funció de monitorització o compartició de pantalla de Veyon o Epoptes, evitant que els professors vegin les seves 
                      pantalles.
- **Easy to Use:** L'script és senzill d'utilitzar, amb una interfície fàcil d'utilitzar que permet als estudiants activar i desactivar el mode de privadesa amb una sola ordre.
- **Customizable:** VeyEpo permet personalitzar la configuració, com ara especificar la durada del mode de privadesa o afegir mesures de seguretat addicionals.
  
## Requirements

- **Linux:** VeyEpo està dissenyat per funcionar en sistemes operatius basats en Linux.
- **Veyon or Epoptes:** VeyEpo requereix que Veyon o Epoptes estiguin instal·lats al dispositiu de l'estudiant.
- **Bash:** L'script està escrit en Bash, de manera que cal un shell compatible amb Bash.

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/biielfont/VeyEpo.git
   ```

2. Navigate to the repository:

   ```bash
   cd VeyEpo
   ```

3. Make the script executable:

   ```bash
   chmod +x veyepo.sh
   ```

4. Run the script:

   ```bash
   ./veyepo.sh
   ```

5. Deixeu que el terminal que executa l'script obert, automàticament matarà el procés quan el trobi.

## Contributing

Les contribucions a VeyEpo són benvingudes i animades! Si teniu alguna millora, correcció d'errors o funcions noves per afegir, no dubteu a obrir una sol·licitud d'extracció.

1. Fork al repositori.
2. Crea una nova branch: `git checkout -b my-feature`.
3. Fes els teus canvis i envia el commit: `git commit -m 'Add some feature'`.
4. Enival a la branch: `git push origin my-feature`.
5. Obre una pull request.

## License

VeyEpo is released under the [MIT License](LICENSE). Feel free to modify and distribute it as per your needs.
