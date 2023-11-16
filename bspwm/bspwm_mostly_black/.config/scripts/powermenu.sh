#! /bin/sh

rofi_cmd() {
	rofi -dmenu \
		-theme ~/.config/rofi/powermenu.rasi
}

chosen=$(printf "⏻ poweroff\n󰜉 reboot\n󰗼 exit" | rofi_cmd)

case "$chosen" in

	"⏻") poweroff ;;
	"󰜉") reboot ;;
	"󰗼") bspc quit ;;
	*) exit 1 ;;

esac
