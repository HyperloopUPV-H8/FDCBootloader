/*
 * Bootloader.hpp
 *
 *  Created on: Jan 21, 2022
 *      Author: Pablo
 */

#pragma once
#undef HAL_ETH_MODULE_ENABLED

#include "ST-LIB.hpp"
#include "C++Utilities/CppUtils.hpp"

class FDCBootloader{
private:
	enum Orders{
	    ACK                 = 0X79,
	    NACK                = 0x1f,
	    GET                 = 0x00,
	    GET_VERSION         = 0X01,
	    GET_ID              = 0X02,
	    READ_MEMORY         = 0x11,
	    WRITE_MEMORY        = 0x31,
	    ERASE_MEMORY        = 0x44,
	    WRITE_PROTECT       = 0x63,
	    WRITE_UNPROTECT     = 0X73,
	    READOUT_PROTECT     = 0X82,
	    READOUT_UNPROTECT   = 0x92,
	    GO                  = 0x21,
	};

public:

	/*The Get command allows the host to get the version of the bootloader and the supported commands. When the
	bootloader receives the Get command, it transmits the bootloader version and the supported command codes to
	the host.*/
	static void get();

	/*The Get Version command is used to get the bootloader version.*/
	static void get_version();

	/*The Get ID command is used to get the version of the STM32 product ID (identification). */
	static void get_id();

	/*The Read Memory command is used to read data from any valid memory address: RAM, flash memory, and
	information block (system memory or option byte areas).*/
	static void read_memory();

	/*The Exit command is used to execute downloaded code .*/
	static void exit_bootloader();

	/*The Write Memory command is used to write data to any valid memory address of the RAM, flash memory,
	or option byte area. */
	static void write_memory(uint32_t address, uint8_t* data, uint32_t size);

	/*The Erase Memory command allows the host to erase flash memory pages.*/
	static void erase_memory();

	/*The Write Protect command is used to enable the write protection for some or all flash memory sectors.*/
	static void write_protect();

	/*The Write Unprotect command is used to disable the write protection of all the flash memory sectors. */
	static void write_unprotect();

	/*The Readout Protect command is used to enable the flash memory readout protection*/
	static void readout_protect();

	/*The Readout Unprotect command is used to disable the flash memory readout protection.*/
	static void readout_unprotect();

private:
	static void __write_memory_order(uint32_t address, uint8_t* data, uint32_t size);
	static void __wait_for_bootloader_command_response();
	static void __wait_for_bootloader_message();

};
