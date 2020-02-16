#!/usr/bin/env python

"""
Build the corpus package index.  Usage:

  build_pkg_index.py <path-to-packages> <output-file>
"""

xml_header = """<?xml version="1.0"?>
<?xml-stylesheet href="index.xsl" type="text/xsl"?>
"""

import sys
from nltk.downloader import build_index
from xml.etree import ElementTree

# if len(sys.argv) != 4:
#     print("Usage: ")
#     print("build_pkg_index.py <path-to-packages> <output-file>")
#     sys.exit(-1)

# ROOT, BASE_URL, OUT = sys.argv[1:]

ROOT = '.'
BASE_URL = 'https://raw.githubusercontent.com/chrislit/abydos-data/master/packages'
OUT = 'index.xml'

index = build_index(ROOT, BASE_URL)
s = ElementTree.tostring(index)
s = s.decode("utf8")
out = open(OUT, 'w')
out.write(xml_header)
out.write(s)
out.write('\n')
out.close()
