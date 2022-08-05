#!/bin/sh

httrack \
  https://groups.csail.mit.edu/mac/classes/6.001/ST98/psets/ \
  +ftp://ftp.ai.mit.edu/* \
  -O srv/ \
  -%I

# BUG:  pdfs fetched from the ftp server are 0 bytes.
#       try the wget script to get them
# NOTE: this is slower than wget and I don't know why. At least it correctly
#       fixes the links to the ftp server.
