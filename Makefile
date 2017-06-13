# dmenupw
# license file contains license.

include config.mk

options:
	@echo "-----------------------"
	@echo "dmenupw version $(VERSION) makefile"
	@echo "-----------------------"
	@echo "Make commands:"
	@echo "* install"
	@echo "* uninstall"
	@echo ""
	@echo "Current make options:"
	@echo "SRC_BINARY_NAME		= $(SRC_BINARY_NAME)"
	@echo "TARGET_BINARY_NAME	= $(TARGET_BINARY_NAME)"
	@echo "INSTALL_LOCATION 	= $(INSTALL_LOCATION)"
	@echo "-----------------------"




uninstall:
	@echo "Removing binary from $(INSTALL_LOCATION)"
	@rm $(INSTALL_LOCATION)/$(TARGET_BINARY_NAME)
	@echo "Done."


install :
	@echo "Installing binary"
	@cp $(SRC_BINARY_NAME) $(INSTALL_LOCATION)/$(TARGET_BINARY_NAME)
	@chmod 755 $(INSTALL_LOCATION)/$(TARGET_BINARY_NAME)
	@echo "Done"