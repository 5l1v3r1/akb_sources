prepare:
	@bash ./btool/prepare.sh
akb: prepare
	@bash ./btool/build_btool.sh
clean:
	rm -rf build/ out/ tmplib/
installer: prepare
	@bash ./btool/build_btool_install.sh
deb: prepare
	@bash ./btool/build_btool_dpkg.sh
all: akb
	@bash ./btool/build_btool_install.sh
	@bash ./btool/build_btool_dpkg.sh

