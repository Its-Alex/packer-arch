.PHONY: build-vbox
build:
	packer build -only=virtualbox-iso arch.json

.PHONY: import-box
import-box:
	vagrant box add --force --name packer-archlinux packer_arch_2018-08-01_US.box 