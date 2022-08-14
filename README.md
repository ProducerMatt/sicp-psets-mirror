# Mirror of SICP resources

This repo contains a mirror of the SICP problem sets. It also contains the
texinfo, html5 and pdf versions, at
`docs/{sicp.info.gz,html5/index.xhtml,sicp.pdf}` respectively.

The website's contents can be found in `docs/`. Point any webserver at it to
serve the contents.

It starts with an amalgamation of the website rip provided by httrack and wget. httrack
correctly links to the pdfs on the FTP site, but fails to download them; wget
correctly downloads them, but fails to link them.

I've included all the files I've gotten in the repository and its submodules. If
you want to retrace my steps I've roughly recreated them in `get.sh`. I couldn't
figure out how to wire wget to mirror only the pdfs without also re-downloading
all the other files. If you know how feel free to send a pull request.

## Redbean
To compile them in a [Redbean](https://redbean.dev/) that you can serve [from
any x64 operating system](https://justine.lol/ape.html):

``` sh
# Download Cosmo binaries
./build.sh init
# Pack docs/ into sicp-psets.com
./build.sh pack
# BUG: If you encounter a crash on trying to pack, get a copy of zip.com
#      compiled with MODE=asan from the Cosmopolitan monorepo.

# sicp.com is a now portable webserver containing the mirror!
# Move it to any compatible computer you want to serve from.
# To serve sandboxed:
./sicp-psets.com -SSS
```
