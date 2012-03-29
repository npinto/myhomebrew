default: help

help:
	make list

list:
	@#@echo Available targets:
	@#@echo ------------------
	@./make-list-targets.sh -f Makefile | grep -v '_.*' | cut -d':' -f1

all:
	make $(shell make list | grep -v all)

sed:
	brew install gnu-sed --default-names

python:
	brew install readline sqlite gdbm
	brew install --framework --universal python
	@echo "*******************************************************"
	@echo "Don't forget to update your PATH:"
	@echo 'export PATH="\$$(brew --prefix python)/bin":/usr/local/share/python:\$${PATH}'
	@echo "*******************************************************"

pip:
	easy_install pip

