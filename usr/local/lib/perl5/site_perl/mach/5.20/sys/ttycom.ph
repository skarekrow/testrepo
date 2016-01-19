require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_TTYCOM_H_)) {
    eval 'sub _SYS_TTYCOM_H_ () {1;}' unless defined(&_SYS_TTYCOM_H_);
    require 'sys/ioccom.ph';
    eval 'sub TIOCEXCL () { &_IO(ord(\'t\'), 13);}' unless defined(&TIOCEXCL);
    eval 'sub TIOCNXCL () { &_IO(ord(\'t\'), 14);}' unless defined(&TIOCNXCL);
    eval 'sub TIOCGPTN () { &_IOR(ord(\'t\'), 15, \'int\');}' unless defined(&TIOCGPTN);
    eval 'sub TIOCFLUSH () { &_IOW(ord(\'t\'), 16, \'int\');}' unless defined(&TIOCFLUSH);
    eval 'sub TIOCGETA () { &_IOR(ord(\'t\'), 19, \'struct termios\');}' unless defined(&TIOCGETA);
    eval 'sub TIOCSETA () { &_IOW(ord(\'t\'), 20, \'struct termios\');}' unless defined(&TIOCSETA);
    eval 'sub TIOCSETAW () { &_IOW(ord(\'t\'), 21, \'struct termios\');}' unless defined(&TIOCSETAW);
    eval 'sub TIOCSETAF () { &_IOW(ord(\'t\'), 22, \'struct termios\');}' unless defined(&TIOCSETAF);
    eval 'sub TIOCGETD () { &_IOR(ord(\'t\'), 26, \'int\');}' unless defined(&TIOCGETD);
    eval 'sub TIOCSETD () { &_IOW(ord(\'t\'), 27, \'int\');}' unless defined(&TIOCSETD);
    eval 'sub TIOCPTMASTER () { &_IO(ord(\'t\'), 28);}' unless defined(&TIOCPTMASTER);
    eval 'sub TIOCGDRAINWAIT () { &_IOR(ord(\'t\'), 86, \'int\');}' unless defined(&TIOCGDRAINWAIT);
    eval 'sub TIOCSDRAINWAIT () { &_IOW(ord(\'t\'), 87, \'int\');}' unless defined(&TIOCSDRAINWAIT);
    eval 'sub TIOCTIMESTAMP () { &_IOR(ord(\'t\'), 89, \'struct timeval\');}' unless defined(&TIOCTIMESTAMP);
    eval 'sub TIOCMGDTRWAIT () { &_IOR(ord(\'t\'), 90, \'int\');}' unless defined(&TIOCMGDTRWAIT);
    eval 'sub TIOCMSDTRWAIT () { &_IOW(ord(\'t\'), 91, \'int\');}' unless defined(&TIOCMSDTRWAIT);
    eval 'sub TIOCDRAIN () { &_IO(ord(\'t\'), 94);}' unless defined(&TIOCDRAIN);
    eval 'sub TIOCSIG () { &_IOWINT(ord(\'t\'), 95);}' unless defined(&TIOCSIG);
    eval 'sub TIOCEXT () { &_IOW(ord(\'t\'), 96, \'int\');}' unless defined(&TIOCEXT);
    eval 'sub TIOCSCTTY () { &_IO(ord(\'t\'), 97);}' unless defined(&TIOCSCTTY);
    eval 'sub TIOCCONS () { &_IOW(ord(\'t\'), 98, \'int\');}' unless defined(&TIOCCONS);
    eval 'sub TIOCGSID () { &_IOR(ord(\'t\'), 99, \'int\');}' unless defined(&TIOCGSID);
    eval 'sub TIOCSTAT () { &_IO(ord(\'t\'), 101);}' unless defined(&TIOCSTAT);
    eval 'sub TIOCUCNTL () { &_IOW(ord(\'t\'), 102, \'int\');}' unless defined(&TIOCUCNTL);
    eval 'sub UIOCCMD {
        my($n) = @_;
	    eval q( &_IO(ord(\'u\'), $n));
    }' unless defined(&UIOCCMD);
    eval 'sub TIOCSWINSZ () { &_IOW(ord(\'t\'), 103, \'struct winsize\');}' unless defined(&TIOCSWINSZ);
    eval 'sub TIOCGWINSZ () { &_IOR(ord(\'t\'), 104, \'struct winsize\');}' unless defined(&TIOCGWINSZ);
    eval 'sub TIOCMGET () { &_IOR(ord(\'t\'), 106, \'int\');}' unless defined(&TIOCMGET);
    eval 'sub TIOCM_LE () {0001;}' unless defined(&TIOCM_LE);
    eval 'sub TIOCM_DTR () {0002;}' unless defined(&TIOCM_DTR);
    eval 'sub TIOCM_RTS () {0004;}' unless defined(&TIOCM_RTS);
    eval 'sub TIOCM_ST () {0010;}' unless defined(&TIOCM_ST);
    eval 'sub TIOCM_SR () {0020;}' unless defined(&TIOCM_SR);
    eval 'sub TIOCM_CTS () {0040;}' unless defined(&TIOCM_CTS);
    eval 'sub TIOCM_DCD () {0100;}' unless defined(&TIOCM_DCD);
    eval 'sub TIOCM_RI () {0200;}' unless defined(&TIOCM_RI);
    eval 'sub TIOCM_DSR () {0400;}' unless defined(&TIOCM_DSR);
    eval 'sub TIOCM_CD () { &TIOCM_DCD;}' unless defined(&TIOCM_CD);
    eval 'sub TIOCM_CAR () { &TIOCM_DCD;}' unless defined(&TIOCM_CAR);
    eval 'sub TIOCM_RNG () { &TIOCM_RI;}' unless defined(&TIOCM_RNG);
    eval 'sub TIOCMBIC () { &_IOW(ord(\'t\'), 107, \'int\');}' unless defined(&TIOCMBIC);
    eval 'sub TIOCMBIS () { &_IOW(ord(\'t\'), 108, \'int\');}' unless defined(&TIOCMBIS);
    eval 'sub TIOCMSET () { &_IOW(ord(\'t\'), 109, \'int\');}' unless defined(&TIOCMSET);
    eval 'sub TIOCSTART () { &_IO(ord(\'t\'), 110);}' unless defined(&TIOCSTART);
    eval 'sub TIOCSTOP () { &_IO(ord(\'t\'), 111);}' unless defined(&TIOCSTOP);
    eval 'sub TIOCPKT () { &_IOW(ord(\'t\'), 112, \'int\');}' unless defined(&TIOCPKT);
    eval 'sub TIOCPKT_DATA () {0x;}' unless defined(&TIOCPKT_DATA);
    eval 'sub TIOCPKT_FLUSHREAD () {0x1;}' unless defined(&TIOCPKT_FLUSHREAD);
    eval 'sub TIOCPKT_FLUSHWRITE () {0x2;}' unless defined(&TIOCPKT_FLUSHWRITE);
    eval 'sub TIOCPKT_STOP () {0x4;}' unless defined(&TIOCPKT_STOP);
    eval 'sub TIOCPKT_START () {0x8;}' unless defined(&TIOCPKT_START);
    eval 'sub TIOCPKT_NOSTOP () {0x10;}' unless defined(&TIOCPKT_NOSTOP);
    eval 'sub TIOCPKT_DOSTOP () {0x20;}' unless defined(&TIOCPKT_DOSTOP);
    eval 'sub TIOCPKT_IOCTL () {0x40;}' unless defined(&TIOCPKT_IOCTL);
    eval 'sub TIOCNOTTY () { &_IO(ord(\'t\'), 113);}' unless defined(&TIOCNOTTY);
    eval 'sub TIOCSTI () { &_IOW(ord(\'t\'), 114, \'char\');}' unless defined(&TIOCSTI);
    eval 'sub TIOCOUTQ () { &_IOR(ord(\'t\'), 115, \'int\');}' unless defined(&TIOCOUTQ);
    eval 'sub TIOCSPGRP () { &_IOW(ord(\'t\'), 118, \'int\');}' unless defined(&TIOCSPGRP);
    eval 'sub TIOCGPGRP () { &_IOR(ord(\'t\'), 119, \'int\');}' unless defined(&TIOCGPGRP);
    eval 'sub TIOCCDTR () { &_IO(ord(\'t\'), 120);}' unless defined(&TIOCCDTR);
    eval 'sub TIOCSDTR () { &_IO(ord(\'t\'), 121);}' unless defined(&TIOCSDTR);
    eval 'sub TIOCCBRK () { &_IO(ord(\'t\'), 122);}' unless defined(&TIOCCBRK);
    eval 'sub TIOCSBRK () { &_IO(ord(\'t\'), 123);}' unless defined(&TIOCSBRK);
    eval 'sub TTYDISC () {0;}' unless defined(&TTYDISC);
    eval 'sub SLIPDISC () {4;}' unless defined(&SLIPDISC);
    eval 'sub PPPDISC () {5;}' unless defined(&PPPDISC);
    eval 'sub NETGRAPHDISC () {6;}' unless defined(&NETGRAPHDISC);
    eval 'sub H4DISC () {7;}' unless defined(&H4DISC);
}
1;
