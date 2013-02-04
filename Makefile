ARGS := -p

all:

install-all: install-dirs install-diffs install-files install-scripts

install-dirs:
	@find ${CURDIR} -type d | sed 's;${CURDIR};;' | \
		xargs ${ARGS} -n1 -I{} mkdir -p ${DESTDIR}/{}

install-diffs:
	@find ${CURDIR} -type f -name '*.diff' | \
		xargs ${ARGS} -n1 -L1 patch -p0 -Ni

install-files:
	@find ${CURDIR} -type f \! \( -name '*.diff' -or -name '*.script' -or -name Makefile \) | \
		sed 's;${CURDIR};;' | \
		xargs ${ARGS} -n1 -I{} cp ${CURDIR}/{} ${DESTDIR}/{} 

install-scripts:
	@find ${CURDIR} -type f -name '*.script' | xargs ${ARGS} -n1 sh
