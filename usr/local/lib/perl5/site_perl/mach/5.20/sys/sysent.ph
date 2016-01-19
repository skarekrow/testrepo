require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_SYSENT_H_)) {
    eval 'sub _SYS_SYSENT_H_ () {1;}' unless defined(&_SYS_SYSENT_H_);
    require 'bsm/audit.ph';
    eval 'sub SYF_CAPENABLED () {0x1;}' unless defined(&SYF_CAPENABLED);
    eval 'sub SY_THR_FLAGMASK () {0x7;}' unless defined(&SY_THR_FLAGMASK);
    eval 'sub SY_THR_STATIC () {0x1;}' unless defined(&SY_THR_STATIC);
    eval 'sub SY_THR_DRAINING () {0x2;}' unless defined(&SY_THR_DRAINING);
    eval 'sub SY_THR_ABSENT () {0x4;}' unless defined(&SY_THR_ABSENT);
    eval 'sub SY_THR_INCR () {0x8;}' unless defined(&SY_THR_INCR);
    eval 'sub SV_ILP32 () {0x100;}' unless defined(&SV_ILP32);
    eval 'sub SV_LP64 () {0x200;}' unless defined(&SV_LP64);
    eval 'sub SV_IA32 () {0x4000;}' unless defined(&SV_IA32);
    eval 'sub SV_AOUT () {0x8000;}' unless defined(&SV_AOUT);
    eval 'sub SV_SHP () {0x10000;}' unless defined(&SV_SHP);
    eval 'sub SV_ABI_MASK () {0xff;}' unless defined(&SV_ABI_MASK);
    eval 'sub SV_PROC_FLAG {
        my($p, $x) = @_;
	    eval q((($p)-> ($p_sysent->{sv_flags}) & ($x)));
    }' unless defined(&SV_PROC_FLAG);
    eval 'sub SV_PROC_ABI {
        my($p) = @_;
	    eval q((($p)-> ($p_sysent->{sv_flags}) &  &SV_ABI_MASK));
    }' unless defined(&SV_PROC_ABI);
    eval 'sub SV_CURPROC_FLAG {
        my($x) = @_;
	    eval q( &SV_PROC_FLAG( &curproc, $x));
    }' unless defined(&SV_CURPROC_FLAG);
    eval 'sub SV_CURPROC_ABI () {
        eval q( &SV_PROC_ABI( &curproc));
    }' unless defined(&SV_CURPROC_ABI);
    eval 'sub SV_ABI_LINUX () {3;}' unless defined(&SV_ABI_LINUX);
    eval 'sub SV_ABI_FREEBSD () {9;}' unless defined(&SV_ABI_FREEBSD);
    eval 'sub SV_ABI_UNDEF () {255;}' unless defined(&SV_ABI_UNDEF);
    if(defined(&_KERNEL)) {
	if(defined(&__amd64__) || defined(&__ia64__)) {
	}
	eval 'sub NO_SYSCALL () {(-1);}' unless defined(&NO_SYSCALL);
	eval 'sub MAKE_SYSENT {
	    my($syscallname) = @_;
    	    eval q( &static \'struct sysent\' $syscallname &_sysent = { ($sizeof{\'struct syscallname\'   &_args } / $sizeof{ &register_t}), ( &sy_call_t *)&  &sys_$syscallname,  &SYS_AUE_$syscallname });
	}' unless defined(&MAKE_SYSENT);
	eval 'sub MAKE_SYSENT_COMPAT {
	    my($syscallname) = @_;
    	    eval q( &static \'struct sysent\' $syscallname &_sysent = { ($sizeof{\'struct syscallname\'   &_args } / $sizeof{ &register_t}), ( &sy_call_t *)& $syscallname,  &SYS_AUE_$syscallname });
	}' unless defined(&MAKE_SYSENT_COMPAT);
	eval 'sub SYSCALL_MODULE {
	    my($name, $offset, $new_sysent, $evh, $arg) = @_;
    	    eval q( &static \'struct syscall_module_data\' $name &_syscall_mod = { $evh, $arg, $offset, $new_sysent, { 0,  &NULL,  &AUE_NULL } };  &static  &moduledata_t $name &_mod = { \\"sys/\\" $name,  &syscall_module_handler, $name &_syscall_mod };  &DECLARE_MODULE($name, $name &_mod,  &SI_SUB_SYSCALLS,  &SI_ORDER_MIDDLE));
	}' unless defined(&SYSCALL_MODULE);
	eval 'sub SYSCALL_MODULE_HELPER {
	    my($syscallname) = @_;
    	    eval q( &static \'int\' $syscallname &_syscall =  &SYS_$syscallname;  &MAKE_SYSENT($syscallname);  &SYSCALL_MODULE($syscallname, & $syscallname &_syscall, & $syscallname &_sysent,  &NULL,  &NULL));
	}' unless defined(&SYSCALL_MODULE_HELPER);
	eval 'sub SYSCALL_MODULE_PRESENT {
	    my($syscallname) = @_;
    	    eval q(( ($sysent[&SYS_##syscallname]->{sy_call}) != ( &sy_call_t *) &lkmnosys  &&  ($sysent[&SYS_##syscallname]->{sy_call}) != ( &sy_call_t *) &lkmressys));
	}' unless defined(&SYSCALL_MODULE_PRESENT);
	eval 'sub SYSCALL_INIT_HELPER {
	    my($syscallname) = @_;
    	    eval q({ . &new_sysent = { . &sy_narg = ($sizeof{\'struct syscallname\'   &_args } / $sizeof{ &register_t}), . &sy_call = ( &sy_call_t *)&  &sys_  $syscallname, . &sy_auevent =  &SYS_AUE_$syscallname }, . &syscall_no =  &SYS_$syscallname });
	}' unless defined(&SYSCALL_INIT_HELPER);
	eval 'sub SYSCALL_INIT_HELPER_COMPAT {
	    my($syscallname) = @_;
    	    eval q({ . &new_sysent = { . &sy_narg = ($sizeof{\'struct syscallname\'   &_args } / $sizeof{ &register_t}), . &sy_call = ( &sy_call_t *)& $syscallname, . &sy_auevent =  &SYS_AUE_$syscallname }, . &syscall_no =  &SYS_$syscallname });
	}' unless defined(&SYSCALL_INIT_HELPER_COMPAT);
	eval 'sub SYSCALL_INIT_LAST () {{ . &syscall_no =  &NO_SYSCALL };}' unless defined(&SYSCALL_INIT_LAST);
	eval 'sub INIT_SYSENTVEC {
	    my($name, $sv) = @_;
    	    eval q( &SYSINIT($name,  &SI_SUB_EXEC,  &SI_ORDER_ANY, ( &sysinit_cfunc_t) &exec_sysvec_init, $sv););
	}' unless defined(&INIT_SYSENTVEC);
    }
}
1;
