#!/bin/bash

python3 -m http.server 4200 &
phantomjs-2.1.1-linux-x86_64/bin/phantomjs toPDF.js 'http://localhost:4200' public/wickham.pdf A4
