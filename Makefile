SHELL		:= /bin/sh

PREFIX		?= /usr/local

TARGET		:= rg


install: release
	cp target/release/${TARGET} ${DESTDIR}/${PREFIX}/bin/
	strip ${DESTDIR}/${PREFIX}/bin/${TARGET}
release:
	cargo build --release


.PHONY: release install
