# Mirror of SICP problem sets

The website's contents can be found in `srv/`. Point any webserver at it to
serve the contents.

It is an amalgamation of the website rip provided by httrack and wget. httrack
correctly links to the pdfs on the FTP site, but fails to download them; wget
correctly downloads them, but fails to link them.

## Redbean
To put in a [Redbean](https://redbean.dev/) that you can serve [from any x64 
operating system](https://justine.lol/ape.html):
``` sh
# Download Cosmo binaries
./build.sh init
# Pack srv/ into sicp-psets.com
./build.sh pack
# sicp-psets.com is a now portable webserver containing the mirror!
# Move it to any compatible computer you want to serve from.
# To serve sandboxed:
./sicp-psets.com -SSS
```
