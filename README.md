# Enunciats ASI

Enunciats de les pràctiques d'Aplicacions i Serveis Sobre Internet (ASI),
edició del 2025. Aquestes pràctiques i assignatura formen part de la titluació
del Grau en Enginyeria de Sistemes TIC (iTIC).

Podeu trobar més informació en els següents enllaços:

- Pàgina del grau: [epsem.upc.edu/ca/estudis/graus/grau-en-enginyeria-de-sistemes-tic](https://epsem.upc.edu/ca/estudis/graus/grau-en-enginyeria-de-sistemes-tic)
- OpenCourseWare (alguns materials): [ocwitic.epsem.upc.edu](https://ocwitic.epsem.upc.edu/)
- Guia docent de l'assignatura: [www.upc.edu/grau/guiadocent/cat/330239/aplicacions-i-serveis-sobre-internet.pdf](http://www.upc.edu/grau/guiadocent/cat/330239/aplicacions-i-serveis-sobre-internet.pdf)
- Material de l'assignatura (OCW): [ocwitic.epsem.upc.edu/assignatures/asi](https://ocwitic.epsem.upc.edu/assignatures/asi)

## Generar els PDFs

Primer, cal descarregar i instal·lar els snippets de Latex del grau iTIC. Només
cal descarregar el tarfile que hi ha a l'OpenCourseWare
( [enllaç directe](https://ocwitic.epsem.upc.edu/trans/latexbits/snippetsltx-20220622-1731-tar.gz/@@download/file/snippetsltx-20230606-1407.tar.gz) )
i seguir les instruccions del README.

Llavors, només cal executar la següent comanda amb el fitxer font que es vol :

```sh
pdflatex path/to/file.tex
```

**Alternativa:** Si es té Docker instal·lat, executar `./build.sh`, un script
que utilitzarà un contenidor (el del Dockerifle) per generar tots els
fitxers i deixar-los a `build/`. En aquest mètode, no cal baixar-se res ni
preocupar-se per tenir versions diferents.

També es pot fer `./build.sh p1` per fer build de `p1.tex` a `p1.pdf`.

## Llicència i contribucions

Tots els fitxers d'aquest repositori tenen la llicència de MIT, que permet
modificar i distribuir el contingut sempre i quan es citi la font i autor
(Eric Roy i Francisco del Águila).

Si trobeu alguna falta o voleu millorar aquest contingut podeu contactar els
autors o crear una Pull Request amb la vostra proposta.
