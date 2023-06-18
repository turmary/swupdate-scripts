#!/bin/sh

echo "Set upgrade_available to 1"
fw_setenv upgrade_available 1

echo "Switch boot_slot to... " 
cur_boot_slot=$(fw_printenv bootslot)
if [ x$cur_boot_slot == x"dualA" ]; then
	echo "Switch to SlotB"
	fw_setenv bootslot dualB
else
	echo "Switch to SlotA"
	fw_setenv bootslot dualA
fi

