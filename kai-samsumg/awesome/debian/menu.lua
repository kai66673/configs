-- automatically generated file. Do not edit (see /usr/share/doc/menu/html)

module("debian.menu")

Debian_menu = {}

Debian_menu["Debian_Игры_Игрушки"] = {
	{"Oclock","oclock"},
	{"Xclock (analog)","xclock -analog"},
	{"Xclock (digital)","xclock -digital -update 1"},
	{"Xeyes","xeyes"},
	{"Xlogo","xlogo"},
}
Debian_menu["Debian_Игры"] = {
	{ "Игрушки", Debian_menu["Debian_Игры_Игрушки"] },
}
Debian_menu["Debian_Приложения_Графика"] = {
	{"X Window Snapshot","xwd | xwud"},
}
Debian_menu["Debian_Приложения_Научные_Математика"] = {
	{"Bc", "x-terminal-emulator -e ".."/usr/bin/bc"},
	{"Dc", "x-terminal-emulator -e ".."/usr/bin/dc"},
	{"Xcalc","xcalc"},
}
Debian_menu["Debian_Приложения_Научные"] = {
	{ "Математика", Debian_menu["Debian_Приложения_Научные_Математика"] },
}
Debian_menu["Debian_Приложения_Оболочки"] = {
	{"Bash", "x-terminal-emulator -e ".."/bin/bash --login"},
	{"Dash", "x-terminal-emulator -e ".."/bin/dash -i"},
	{"Sh", "x-terminal-emulator -e ".."/bin/sh --login"},
}
Debian_menu["Debian_Приложения_Программирование"] = {
	{"GDB", "x-terminal-emulator -e ".."/usr/bin/gdb"},
	{"Tclsh8.6", "x-terminal-emulator -e ".."/usr/bin/tclsh8.6"},
	{"TkWish8.6","x-terminal-emulator -e /usr/bin/wish8.6"},
}
Debian_menu["Debian_Приложения_Программы_просмотра"] = {
	{"Shotwell","/usr/bin/shotwell"},
	{"Xditview","xditview"},
}
Debian_menu["Debian_Приложения_Работа_со_звуком"] = {
	{"Clementine","/usr/bin/clementine"},
}
Debian_menu["Debian_Приложения_Редакторы"] = {
	{"Xedit","xedit"},
}
Debian_menu["Debian_Приложения_Сеть_Общение"] = {
	{"Remmina","/usr/bin/remmina"},
	{"Telnet", "x-terminal-emulator -e ".."/usr/bin/telnet.netkit"},
	{"Xbiff","xbiff"},
}
Debian_menu["Debian_Приложения_Сеть_Пересылка_файлов"] = {
	{"Deluge BitTorrent Client","/usr/bin/deluge","/usr/share/pixmaps/deluge.xpm"},
	{"Transmission BitTorrent Client (GTK)","/usr/bin/transmission-gtk","/usr/share/pixmaps/transmission.xpm"},
}
Debian_menu["Debian_Приложения_Сеть_Просмотр_веб"] = {
	{"Opera","/usr/bin/opera","/usr/share/pixmaps/opera.xpm"},
}
Debian_menu["Debian_Приложения_Сеть"] = {
	{ "Общение", Debian_menu["Debian_Приложения_Сеть_Общение"] },
	{ "Пересылка файлов", Debian_menu["Debian_Приложения_Сеть_Пересылка_файлов"] },
	{ "Просмотр веб", Debian_menu["Debian_Приложения_Сеть_Просмотр_веб"] },
}
Debian_menu["Debian_Приложения_Системные_Администрирование"] = {
	{"DSL/PPPoE configuration tool", "x-terminal-emulator -e ".."/usr/sbin/pppoeconf","/usr/share/pixmaps/pppoeconf.xpm"},
	{"Editres","editres"},
	{"pppconfig", "x-terminal-emulator -e ".."su-to-root -p root -c /usr/sbin/pppconfig"},
	{"Xclipboard","xclipboard"},
	{"Xfontsel","xfontsel"},
	{"Xkill","xkill"},
	{"Xrefresh","xrefresh"},
}
Debian_menu["Debian_Приложения_Системные_Аппаратное_обеспечение"] = {
	{"Xvidtune","xvidtune"},
}
Debian_menu["Debian_Приложения_Системные_Мониторинг"] = {
	{"Pstree", "x-terminal-emulator -e ".."/usr/bin/pstree.x11","/usr/share/pixmaps/pstree16.xpm"},
	{"Top", "x-terminal-emulator -e ".."/usr/bin/top"},
	{"Xconsole","xconsole -file /dev/xconsole"},
	{"Xev","x-terminal-emulator -e xev"},
	{"Xload","xload"},
}
Debian_menu["Debian_Приложения_Системные_Языковое_окружение"] = {
	{"Input Method Configuration", "x-terminal-emulator -e ".."/usr/bin/im-config"},
}
Debian_menu["Debian_Приложения_Системные"] = {
	{ "Администрирование", Debian_menu["Debian_Приложения_Системные_Администрирование"] },
	{ "Аппаратное обеспечение", Debian_menu["Debian_Приложения_Системные_Аппаратное_обеспечение"] },
	{ "Мониторинг", Debian_menu["Debian_Приложения_Системные_Мониторинг"] },
	{ "Языковое окружение", Debian_menu["Debian_Приложения_Системные_Языковое_окружение"] },
}
Debian_menu["Debian_Приложения_Специальные_возможности"] = {
	{"Xmag","xmag"},
}
Debian_menu["Debian_Приложения_Управление_файлами"] = {
	{"Baobab","/usr/bin/baobab","/usr/share/pixmaps/baobab.xpm"},
}
Debian_menu["Debian_Приложения_Эмуляторы_терминалов"] = {
	{"XTerm","xterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
	{"XTerm (Unicode)","uxterm","/usr/share/pixmaps/xterm-color_32x32.xpm"},
}
Debian_menu["Debian_Приложения"] = {
	{ "Графика", Debian_menu["Debian_Приложения_Графика"] },
	{ "Научные", Debian_menu["Debian_Приложения_Научные"] },
	{ "Оболочки", Debian_menu["Debian_Приложения_Оболочки"] },
	{ "Программирование", Debian_menu["Debian_Приложения_Программирование"] },
	{ "Программы просмотра", Debian_menu["Debian_Приложения_Программы_просмотра"] },
	{ "Работа со звуком", Debian_menu["Debian_Приложения_Работа_со_звуком"] },
	{ "Редакторы", Debian_menu["Debian_Приложения_Редакторы"] },
	{ "Сеть", Debian_menu["Debian_Приложения_Сеть"] },
	{ "Системные", Debian_menu["Debian_Приложения_Системные"] },
	{ "Специальные возможности", Debian_menu["Debian_Приложения_Специальные_возможности"] },
	{ "Управление файлами", Debian_menu["Debian_Приложения_Управление_файлами"] },
	{ "Эмуляторы терминалов", Debian_menu["Debian_Приложения_Эмуляторы_терминалов"] },
}
Debian_menu["Debian_Справка"] = {
	{"Info", "x-terminal-emulator -e ".."info"},
	{"Xman","xman"},
}
Debian_menu["Debian"] = {
	{ "Игры", Debian_menu["Debian_Игры"] },
	{ "Приложения", Debian_menu["Debian_Приложения"] },
	{ "Справка", Debian_menu["Debian_Справка"] },
}
