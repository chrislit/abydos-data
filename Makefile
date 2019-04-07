PYTHON = python
BASEURL = https://raw.githubusercontent.com/chrislit/abydos-data/master/packages

pkg_index:
	$(PYTHON) tools/build_pkg_index.py . $(BASEURL) index.xml
	git add index.xml
	git commit -m "updated data index" index.xml
