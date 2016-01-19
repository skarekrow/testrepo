require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_CLOCK_H_)) {
    eval 'sub _SYS_CLOCK_H_ () {1;}' unless defined(&_SYS_CLOCK_H_);
    if(defined(&_KERNEL)) {
	eval 'sub FROMBCD {
	    my($x) = @_;
    	    eval q( &bcd2bin($x));
	}' unless defined(&FROMBCD);
	eval 'sub TOBCD {
	    my($x) = @_;
    	    eval q( &bin2bcd($x));
	}' unless defined(&TOBCD);
	eval 'sub SECDAY () {(24* 60* 60);}' unless defined(&SECDAY);
	eval 'sub SECYR () {( &SECDAY * 365);}' unless defined(&SECYR);
	eval 'sub POSIX_BASE_YEAR () {1970;}' unless defined(&POSIX_BASE_YEAR);
    }
}
1;
