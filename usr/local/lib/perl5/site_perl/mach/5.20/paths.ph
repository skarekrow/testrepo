require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_PATHS_H_)) {
    eval 'sub _PATHS_H_ () {1;}' unless defined(&_PATHS_H_);
    require 'sys/cdefs.ph';
    eval 'sub _PATH_DEFPATH () {"/usr/bin:/bin";}' unless defined(&_PATH_DEFPATH);
    eval 'sub _PATH_STDPATH () {"/usr/bin:/bin:/usr/sbin:/sbin";}' unless defined(&_PATH_STDPATH);
    eval 'sub _PATH_SYSPATH () {"/sbin:/usr/sbin";}' unless defined(&_PATH_SYSPATH);
    eval 'sub _PATH_BSHELL () {"/bin/sh";}' unless defined(&_PATH_BSHELL);
    eval 'sub _PATH_CAPABILITY () {"/etc/capability";}' unless defined(&_PATH_CAPABILITY);
    eval 'sub _PATH_CAPABILITY_DB () {"/etc/capability.db";}' unless defined(&_PATH_CAPABILITY_DB);
    eval 'sub _PATH_CONSOLE () {"/dev/console";}' unless defined(&_PATH_CONSOLE);
    eval 'sub _PATH_CP () {"/bin/cp";}' unless defined(&_PATH_CP);
    eval 'sub _PATH_CSHELL () {"/bin/csh";}' unless defined(&_PATH_CSHELL);
    eval 'sub _PATH_CSMAPPER () {"/usr/share/i18n/csmapper";}' unless defined(&_PATH_CSMAPPER);
    eval 'sub _PATH_DEFTAPE () {"/dev/sa0";}' unless defined(&_PATH_DEFTAPE);
    eval 'sub _PATH_DEVGPIOC () {"/dev/gpioc";}' unless defined(&_PATH_DEVGPIOC);
    eval 'sub _PATH_DEVNULL () {"/dev/null";}' unless defined(&_PATH_DEVNULL);
    eval 'sub _PATH_DEVZERO () {"/dev/zero";}' unless defined(&_PATH_DEVZERO);
    eval 'sub _PATH_DRUM () {"/dev/drum";}' unless defined(&_PATH_DRUM);
    eval 'sub _PATH_ESDB () {"/usr/share/i18n/esdb";}' unless defined(&_PATH_ESDB);
    eval 'sub _PATH_ETC () {"/etc";}' unless defined(&_PATH_ETC);
    eval 'sub _PATH_FTPUSERS () {"/etc/ftpusers";}' unless defined(&_PATH_FTPUSERS);
    eval 'sub _PATH_FWMEM () {"/dev/fwmem";}' unless defined(&_PATH_FWMEM);
    eval 'sub _PATH_GBDE () {"/sbin/gbde";}' unless defined(&_PATH_GBDE);
    eval 'sub _PATH_GELI () {"/sbin/geli";}' unless defined(&_PATH_GELI);
    eval 'sub _PATH_HALT () {"/sbin/halt";}' unless defined(&_PATH_HALT);
    if(defined(&COMPAT_32BIT)) {
	eval 'sub _PATH_I18NMODULE () {"/usr/lib32/i18n";}' unless defined(&_PATH_I18NMODULE);
    } else {
	eval 'sub _PATH_I18NMODULE () {"/usr/lib/i18n";}' unless defined(&_PATH_I18NMODULE);
    }
    eval 'sub _PATH_IFCONFIG () {"/sbin/ifconfig";}' unless defined(&_PATH_IFCONFIG);
    eval 'sub _PATH_KMEM () {"/dev/kmem";}' unless defined(&_PATH_KMEM);
    eval 'sub _PATH_LIBMAP_CONF () {"/etc/libmap.conf";}' unless defined(&_PATH_LIBMAP_CONF);
    eval 'sub _PATH_LOCALE () {"/usr/share/locale";}' unless defined(&_PATH_LOCALE);
    eval 'sub _PATH_LOGIN () {"/usr/bin/login";}' unless defined(&_PATH_LOGIN);
    eval 'sub _PATH_MAILDIR () {"/var/mail";}' unless defined(&_PATH_MAILDIR);
    eval 'sub _PATH_MAN () {"/usr/share/man";}' unless defined(&_PATH_MAN);
    eval 'sub _PATH_MDCONFIG () {"/sbin/mdconfig";}' unless defined(&_PATH_MDCONFIG);
    eval 'sub _PATH_MEM () {"/dev/mem";}' unless defined(&_PATH_MEM);
    eval 'sub _PATH_MKSNAP_FFS () {"/sbin/mksnap_ffs";}' unless defined(&_PATH_MKSNAP_FFS);
    eval 'sub _PATH_MOUNT () {"/sbin/mount";}' unless defined(&_PATH_MOUNT);
    eval 'sub _PATH_NEWFS () {"/sbin/newfs";}' unless defined(&_PATH_NEWFS);
    eval 'sub _PATH_NOLOGIN () {"/var/run/nologin";}' unless defined(&_PATH_NOLOGIN);
    eval 'sub _PATH_RCP () {"/bin/rcp";}' unless defined(&_PATH_RCP);
    eval 'sub _PATH_REBOOT () {"/sbin/reboot";}' unless defined(&_PATH_REBOOT);
    eval 'sub _PATH_RLOGIN () {"/usr/bin/rlogin";}' unless defined(&_PATH_RLOGIN);
    eval 'sub _PATH_RM () {"/bin/rm";}' unless defined(&_PATH_RM);
    eval 'sub _PATH_RSH () {"/usr/bin/rsh";}' unless defined(&_PATH_RSH);
    eval 'sub _PATH_SENDMAIL () {"/usr/sbin/sendmail";}' unless defined(&_PATH_SENDMAIL);
    eval 'sub _PATH_SHELLS () {"/etc/shells";}' unless defined(&_PATH_SHELLS);
    eval 'sub _PATH_TTY () {"/dev/tty";}' unless defined(&_PATH_TTY);
    eval 'sub _PATH_UNIX () {"don\'t use _PATH_UNIX";}' unless defined(&_PATH_UNIX);
    eval 'sub _PATH_UFSSUSPEND () {"/dev/ufssuspend";}' unless defined(&_PATH_UFSSUSPEND);
    eval 'sub _PATH_VI () {"/usr/bin/vi";}' unless defined(&_PATH_VI);
    eval 'sub _PATH_WALL () {"/usr/bin/wall";}' unless defined(&_PATH_WALL);
    eval 'sub _PATH_DEV () {"/dev/";}' unless defined(&_PATH_DEV);
    eval 'sub _PATH_TMP () {"/tmp/";}' unless defined(&_PATH_TMP);
    eval 'sub _PATH_VARDB () {"/var/db/";}' unless defined(&_PATH_VARDB);
    eval 'sub _PATH_VARRUN () {"/var/run/";}' unless defined(&_PATH_VARRUN);
    eval 'sub _PATH_VARTMP () {"/var/tmp/";}' unless defined(&_PATH_VARTMP);
    eval 'sub _PATH_YP () {"/var/yp/";}' unless defined(&_PATH_YP);
    eval 'sub _PATH_UUCPLOCK () {"/var/spool/lock/";}' unless defined(&_PATH_UUCPLOCK);
    if(defined(&RESCUE)) {
	undef(&_PATH_DEFPATH) if defined(&_PATH_DEFPATH);
	eval 'sub _PATH_DEFPATH () {"/rescue:/usr/bin:/bin";}' unless defined(&_PATH_DEFPATH);
	undef(&_PATH_STDPATH) if defined(&_PATH_STDPATH);
	eval 'sub _PATH_STDPATH () {"/rescue:/usr/bin:/bin:/usr/sbin:/sbin";}' unless defined(&_PATH_STDPATH);
	undef(&_PATH_SYSPATH) if defined(&_PATH_SYSPATH);
	eval 'sub _PATH_SYSPATH () {"/rescue:/sbin:/usr/sbin";}' unless defined(&_PATH_SYSPATH);
	undef(&_PATH_BSHELL) if defined(&_PATH_BSHELL);
	eval 'sub _PATH_BSHELL () {"/rescue/sh";}' unless defined(&_PATH_BSHELL);
	undef(&_PATH_CP) if defined(&_PATH_CP);
	eval 'sub _PATH_CP () {"/rescue/cp";}' unless defined(&_PATH_CP);
	undef(&_PATH_CSHELL) if defined(&_PATH_CSHELL);
	eval 'sub _PATH_CSHELL () {"/rescue/csh";}' unless defined(&_PATH_CSHELL);
	undef(&_PATH_HALT) if defined(&_PATH_HALT);
	eval 'sub _PATH_HALT () {"/rescue/halt";}' unless defined(&_PATH_HALT);
	undef(&_PATH_IFCONFIG) if defined(&_PATH_IFCONFIG);
	eval 'sub _PATH_IFCONFIG () {"/rescue/ifconfig";}' unless defined(&_PATH_IFCONFIG);
	undef(&_PATH_MDCONFIG) if defined(&_PATH_MDCONFIG);
	eval 'sub _PATH_MDCONFIG () {"/rescue/mdconfig";}' unless defined(&_PATH_MDCONFIG);
	undef(&_PATH_MOUNT) if defined(&_PATH_MOUNT);
	eval 'sub _PATH_MOUNT () {"/rescue/mount";}' unless defined(&_PATH_MOUNT);
	undef(&_PATH_NEWFS) if defined(&_PATH_NEWFS);
	eval 'sub _PATH_NEWFS () {"/rescue/newfs";}' unless defined(&_PATH_NEWFS);
	undef(&_PATH_RCP) if defined(&_PATH_RCP);
	eval 'sub _PATH_RCP () {"/rescue/rcp";}' unless defined(&_PATH_RCP);
	undef(&_PATH_REBOOT) if defined(&_PATH_REBOOT);
	eval 'sub _PATH_REBOOT () {"/rescue/reboot";}' unless defined(&_PATH_REBOOT);
	undef(&_PATH_RM) if defined(&_PATH_RM);
	eval 'sub _PATH_RM () {"/rescue/rm";}' unless defined(&_PATH_RM);
	undef(&_PATH_VI) if defined(&_PATH_VI);
	eval 'sub _PATH_VI () {"/rescue/vi";}' unless defined(&_PATH_VI);
	undef(&_PATH_WALL) if defined(&_PATH_WALL);
	eval 'sub _PATH_WALL () {"/rescue/wall";}' unless defined(&_PATH_WALL);
    }
}
1;
