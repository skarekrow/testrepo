require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_TIME_H_)) {
    eval 'sub _SYS_TIME_H_ () {1;}' unless defined(&_SYS_TIME_H_);
    require 'sys/_timeval.ph';
    require 'sys/types.ph';
    require 'sys/timespec.ph';
    eval 'sub DST_NONE () {0;}' unless defined(&DST_NONE);
    eval 'sub DST_USA () {1;}' unless defined(&DST_USA);
    eval 'sub DST_AUST () {2;}' unless defined(&DST_AUST);
    eval 'sub DST_WET () {3;}' unless defined(&DST_WET);
    eval 'sub DST_MET () {4;}' unless defined(&DST_MET);
    eval 'sub DST_EET () {5;}' unless defined(&DST_EET);
    eval 'sub DST_CAN () {6;}' unless defined(&DST_CAN);
    if((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
	eval 'sub bintime_addx {
	    my($_bt,$_x) = @_;
    	    eval q({  &uint64_t  &_u;  &_u =  ($_bt->{frac});  ($_bt->{frac}) += $_x;  &if ( &_u >  ($_bt->{frac}))  ($_bt->{sec})++; });
	}' unless defined(&bintime_addx);
	eval 'sub bintime_add {
	    my($_bt,$_bt2) = @_;
    	    eval q({  &uint64_t  &_u;  &_u =  ($_bt->{frac});  ($_bt->{frac}) +=  ($_bt2->{frac});  &if ( &_u >  ($_bt->{frac}))  ($_bt->{sec})++;  ($_bt->{sec}) +=  ($_bt2->{sec}); });
	}' unless defined(&bintime_add);
	eval 'sub bintime_sub {
	    my($_bt,$_bt2) = @_;
    	    eval q({  &uint64_t  &_u;  &_u =  ($_bt->{frac});  ($_bt->{frac}) -=  ($_bt2->{frac});  &if ( &_u <  ($_bt->{frac}))  ($_bt->{sec})--;  ($_bt->{sec}) -=  ($_bt2->{sec}); });
	}' unless defined(&bintime_sub);
	eval 'sub bintime_mul {
	    my($_bt,$_x) = @_;
    	    eval q({  &uint64_t  &_p1,  &_p2;  &_p1 = ( ($_bt->{frac}) & 0xffffffff) * $_x;  &_p2 = ( ($_bt->{frac}) >> 32) * $_x + ( &_p1 >> 32);  ($_bt->{sec}) *= $_x;  ($_bt->{sec}) += ( &_p2 >> 32);  ($_bt->{frac}) = ( &_p2 << 32) | ( &_p1 & 0xffffffff); });
	}' unless defined(&bintime_mul);
	eval 'sub bintime_shift {
	    my($_bt,$_exp) = @_;
    	    eval q({  &if ($_exp > 0) {  ($_bt->{sec}) <<= $_exp;  ($_bt->{sec}) |=  ($_bt->{frac}) >> (64- $_exp);  ($_bt->{frac}) <<= $_exp; }  &else  &if ($_exp < 0) {  ($_bt->{frac}) >>= -$_exp;  ($_bt->{frac}) |= ( &uint64_t) ($_bt->{sec}) << (64+ $_exp);  ($_bt->{sec}) >>= -$_exp; } });
	}' unless defined(&bintime_shift);
	eval 'sub bintime_clear {
	    my($a) = @_;
    	    eval q((($a)-> &sec = ($a)-> &frac = 0));
	}' unless defined(&bintime_clear);
	eval 'sub bintime_isset {
	    my($a) = @_;
    	    eval q((($a)-> &sec || ($a)-> &frac));
	}' unless defined(&bintime_isset);
	eval 'sub bintime_cmp {
	    my($a, $b, $cmp) = @_;
    	    eval q(((($a)-> &sec == ($b)-> &sec) ? (($a)-> &frac $cmp ($b)-> &frac) : (($a)-> &sec $cmp ($b)-> &sec)));
	}' unless defined(&bintime_cmp);
	eval 'sub SBT_1S () {(( &sbintime_t)1<< 32);}' unless defined(&SBT_1S);
	eval 'sub SBT_1M () {( &SBT_1S * 60);}' unless defined(&SBT_1M);
	eval 'sub SBT_1MS () {( &SBT_1S / 1000);}' unless defined(&SBT_1MS);
	eval 'sub SBT_1US () {( &SBT_1S / 1000000);}' unless defined(&SBT_1US);
	eval 'sub SBT_1NS () {( &SBT_1S / 1000000000);}' unless defined(&SBT_1NS);
	eval 'sub SBT_MAX () {0x7fffffffffffffff;}' unless defined(&SBT_MAX);
	eval 'sub sbintime_getsec {
	    my($_sbt) = @_;
    	    eval q({ ($_sbt >> 32); });
	}' unless defined(&sbintime_getsec);
	eval 'sub bttosbt {
	    my($_bt) = @_;
    	    eval q({ ((( &sbintime_t) ($_bt->{sec}) << 32) + ( ($_bt->{frac}) >> 32)); });
	}' unless defined(&bttosbt);
	eval 'sub sbttobt {
	    my($_sbt) = @_;
    	    eval q({ \'struct bintime\'  &_bt;  ($_bt->{sec}) = $_sbt >> 32;  ($_bt->{frac}) = $_sbt << 32; ( &_bt); });
	}' unless defined(&sbttobt);
	eval 'sub timespec2bintime {
	    my($_ts,$_bt) = @_;
    	    eval q({  ($_bt->{sec}) =  ($_ts->{tv_sec});  ($_bt->{frac}) =  ($_ts->{tv_nsec}) * ( &uint64_t)18446744073; });
	}' unless defined(&timespec2bintime);
	eval 'sub bintime2timeval {
	    my($_bt,$_tv) = @_;
    	    eval q({  ($_tv->{tv_sec}) =  ($_bt->{sec});  ($_tv->{tv_usec}) = (( &uint64_t)1000000* ( &uint32_t)( ($_bt->{frac}) >> 32)) >> 32; });
	}' unless defined(&bintime2timeval);
	eval 'sub timeval2bintime {
	    my($_tv,$_bt) = @_;
    	    eval q({  ($_bt->{sec}) =  ($_tv->{tv_sec});  ($_bt->{frac}) =  ($_tv->{tv_usec}) * ( &uint64_t)18446744073709; });
	}' unless defined(&timeval2bintime);
	eval 'sub sbttots {
	    my($_sbt) = @_;
    	    eval q({ \'struct timespec\'  &_ts;  ($_ts->{tv_sec}) = $_sbt >> 32;  ($_ts->{tv_nsec}) = (( &uint64_t)1000000000* ( &uint32_t)$_sbt) >> 32; ( &_ts); });
	}' unless defined(&sbttots);
	eval 'sub tstosbt {
	    my($_ts) = @_;
    	    eval q({ ((( &sbintime_t) ($_ts->{tv_sec}) << 32) + ( ($_ts->{tv_nsec}) * ((( &uint64_t)1<< 63) / 500000000) >> 32)); });
	}' unless defined(&tstosbt);
	eval 'sub sbttotv {
	    my($_sbt) = @_;
    	    eval q({ \'struct timeval\'  &_tv;  ($_tv->{tv_sec}) = $_sbt >> 32;  ($_tv->{tv_usec}) = (( &uint64_t)1000000* ( &uint32_t)$_sbt) >> 32; ( &_tv); });
	}' unless defined(&sbttotv);
	eval 'sub tvtosbt {
	    my($_tv) = @_;
    	    eval q({ ((( &sbintime_t) ($_tv->{tv_sec}) << 32) + ( ($_tv->{tv_usec}) * ((( &uint64_t)1<< 63) / 500000) >> 32)); });
	}' unless defined(&tvtosbt);
    }
    if(defined(&_KERNEL)) {
	eval 'sub timespecclear {
	    my($tvp) = @_;
    	    eval q((($tvp)-> &tv_sec = ($tvp)-> &tv_nsec = 0));
	}' unless defined(&timespecclear);
	eval 'sub timespecisset {
	    my($tvp) = @_;
    	    eval q((($tvp)-> &tv_sec || ($tvp)-> &tv_nsec));
	}' unless defined(&timespecisset);
	eval 'sub timespeccmp {
	    my($tvp, $uvp, $cmp) = @_;
    	    eval q(((($tvp)-> &tv_sec == ($uvp)-> &tv_sec) ? (($tvp)-> &tv_nsec $cmp ($uvp)-> &tv_nsec) : (($tvp)-> &tv_sec $cmp ($uvp)-> &tv_sec)));
	}' unless defined(&timespeccmp);
	eval 'sub timespecadd {
	    my($vvp, $uvp) = @_;
    	    eval q( &do { ($vvp)-> &tv_sec += ($uvp)-> &tv_sec; ($vvp)-> &tv_nsec += ($uvp)-> &tv_nsec;  &if (($vvp)-> &tv_nsec >= 1000000000) { ($vvp)-> &tv_sec++; ($vvp)-> &tv_nsec -= 1000000000; } }  &while (0));
	}' unless defined(&timespecadd);
	eval 'sub timespecsub {
	    my($vvp, $uvp) = @_;
    	    eval q( &do { ($vvp)-> &tv_sec -= ($uvp)-> &tv_sec; ($vvp)-> &tv_nsec -= ($uvp)-> &tv_nsec;  &if (($vvp)-> &tv_nsec < 0) { ($vvp)-> &tv_sec--; ($vvp)-> &tv_nsec += 1000000000; } }  &while (0));
	}' unless defined(&timespecsub);
	eval 'sub timevalclear {
	    my($tvp) = @_;
    	    eval q((($tvp)-> &tv_sec = ($tvp)-> &tv_usec = 0));
	}' unless defined(&timevalclear);
	eval 'sub timevalisset {
	    my($tvp) = @_;
    	    eval q((($tvp)-> &tv_sec || ($tvp)-> &tv_usec));
	}' unless defined(&timevalisset);
	eval 'sub timevalcmp {
	    my($tvp, $uvp, $cmp) = @_;
    	    eval q(((($tvp)-> &tv_sec == ($uvp)-> &tv_sec) ? (($tvp)-> &tv_usec $cmp ($uvp)-> &tv_usec) : (($tvp)-> &tv_sec $cmp ($uvp)-> &tv_sec)));
	}' unless defined(&timevalcmp);
    }
    unless(defined(&_KERNEL)) {
	eval 'sub timerclear {
	    my($tvp) = @_;
    	    eval q((($tvp)-> &tv_sec = ($tvp)-> &tv_usec = 0));
	}' unless defined(&timerclear);
	eval 'sub timerisset {
	    my($tvp) = @_;
    	    eval q((($tvp)-> &tv_sec || ($tvp)-> &tv_usec));
	}' unless defined(&timerisset);
	eval 'sub timercmp {
	    my($tvp, $uvp, $cmp) = @_;
    	    eval q(((($tvp)-> &tv_sec == ($uvp)-> &tv_sec) ? (($tvp)-> &tv_usec $cmp ($uvp)-> &tv_usec) : (($tvp)-> &tv_sec $cmp ($uvp)-> &tv_sec)));
	}' unless defined(&timercmp);
	eval 'sub timeradd {
	    my($tvp, $uvp, $vvp) = @_;
    	    eval q( &do { ($vvp)-> &tv_sec = ($tvp)-> &tv_sec + ($uvp)-> &tv_sec; ($vvp)-> &tv_usec = ($tvp)-> &tv_usec + ($uvp)-> &tv_usec;  &if (($vvp)-> &tv_usec >= 1000000) { ($vvp)-> &tv_sec++; ($vvp)-> &tv_usec -= 1000000; } }  &while (0));
	}' unless defined(&timeradd);
	eval 'sub timersub {
	    my($tvp, $uvp, $vvp) = @_;
    	    eval q( &do { ($vvp)-> &tv_sec = ($tvp)-> &tv_sec - ($uvp)-> &tv_sec; ($vvp)-> &tv_usec = ($tvp)-> &tv_usec - ($uvp)-> &tv_usec;  &if (($vvp)-> &tv_usec < 0) { ($vvp)-> &tv_sec--; ($vvp)-> &tv_usec += 1000000; } }  &while (0));
	}' unless defined(&timersub);
    }
    eval 'sub ITIMER_REAL () {0;}' unless defined(&ITIMER_REAL);
    eval 'sub ITIMER_VIRTUAL () {1;}' unless defined(&ITIMER_VIRTUAL);
    eval 'sub ITIMER_PROF () {2;}' unless defined(&ITIMER_PROF);
    unless(defined(&CLOCK_REALTIME)) {
	eval 'sub CLOCK_REALTIME () {0;}' unless defined(&CLOCK_REALTIME);
	eval 'sub CLOCK_VIRTUAL () {1;}' unless defined(&CLOCK_VIRTUAL);
	eval 'sub CLOCK_PROF () {2;}' unless defined(&CLOCK_PROF);
	eval 'sub CLOCK_MONOTONIC () {4;}' unless defined(&CLOCK_MONOTONIC);
	eval 'sub CLOCK_UPTIME () {5;}' unless defined(&CLOCK_UPTIME);
	eval 'sub CLOCK_UPTIME_PRECISE () {7;}' unless defined(&CLOCK_UPTIME_PRECISE);
	eval 'sub CLOCK_UPTIME_FAST () {8;}' unless defined(&CLOCK_UPTIME_FAST);
	eval 'sub CLOCK_REALTIME_PRECISE () {9;}' unless defined(&CLOCK_REALTIME_PRECISE);
	eval 'sub CLOCK_REALTIME_FAST () {10;}' unless defined(&CLOCK_REALTIME_FAST);
	eval 'sub CLOCK_MONOTONIC_PRECISE () {11;}' unless defined(&CLOCK_MONOTONIC_PRECISE);
	eval 'sub CLOCK_MONOTONIC_FAST () {12;}' unless defined(&CLOCK_MONOTONIC_FAST);
	eval 'sub CLOCK_SECOND () {13;}' unless defined(&CLOCK_SECOND);
	eval 'sub CLOCK_THREAD_CPUTIME_ID () {14;}' unless defined(&CLOCK_THREAD_CPUTIME_ID);
	eval 'sub CLOCK_PROCESS_CPUTIME_ID () {15;}' unless defined(&CLOCK_PROCESS_CPUTIME_ID);
    }
    unless(defined(&TIMER_ABSTIME)) {
	eval 'sub TIMER_RELTIME () {0x;}' unless defined(&TIMER_RELTIME);
	eval 'sub TIMER_ABSTIME () {0x1;}' unless defined(&TIMER_ABSTIME);
    }
    if((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
	eval 'sub CPUCLOCK_WHICH_PID () {0;}' unless defined(&CPUCLOCK_WHICH_PID);
	eval 'sub CPUCLOCK_WHICH_TID () {1;}' unless defined(&CPUCLOCK_WHICH_TID);
    }
    if(defined(&_KERNEL)) {
	eval 'sub sbinuptime {
	    my($void) = @_;
    	    eval q({ \'struct bintime\'  &_bt;  &binuptime(& &_bt); ( &bttosbt( &_bt)); });
	}' unless defined(&sbinuptime);
	eval 'sub getsbinuptime {
	    my($void) = @_;
    	    eval q({ \'struct bintime\'  &_bt;  &getbinuptime(& &_bt); ( &bttosbt( &_bt)); });
	}' unless defined(&getsbinuptime);
	eval 'sub TC_DEFAULTPERC () {5;}' unless defined(&TC_DEFAULTPERC);
	eval 'sub BT2FREQ {
	    my($bt) = @_;
    	    eval q(((( &uint64_t)0x8000000000000000 + (($bt)-> &frac >> 2)) / (($bt)-> &frac >> 1)));
	}' unless defined(&BT2FREQ);
	eval 'sub SBT2FREQ {
	    my($sbt) = @_;
    	    eval q((( &SBT_1S + (($sbt) >> 1)) / ($sbt)));
	}' unless defined(&SBT2FREQ);
	eval 'sub FREQ2BT {
	    my($freq, $bt) = @_;
    	    eval q({ ($bt)-> &sec = 0; ($bt)-> &frac = (( &uint64_t)0x8000000000000000 / ($freq)) << 1; });
	}' unless defined(&FREQ2BT);
	eval 'sub TIMESEL {
	    my($sbt, $sbt2) = @_;
    	    eval q(((($sbt2) >=  &sbt_timethreshold) ? ((*($sbt) =  &getsbinuptime()), 1) : ((*($sbt) =  &sbinuptime()), 0)));
	}' unless defined(&TIMESEL);
    } else {
	require 'time.ph';
	require 'sys/cdefs.ph';
	require 'sys/select.ph';
	if((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
	}
	if((defined(&__XSI_VISIBLE) ? &__XSI_VISIBLE : undef)) {
	}
    }
}
1;
