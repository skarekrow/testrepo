require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_MODULE_H_)) {
    eval 'sub _SYS_MODULE_H_ () {1;}' unless defined(&_SYS_MODULE_H_);
    eval 'sub MDT_DEPEND () {1;}' unless defined(&MDT_DEPEND);
    eval 'sub MDT_MODULE () {2;}' unless defined(&MDT_MODULE);
    eval 'sub MDT_VERSION () {3;}' unless defined(&MDT_VERSION);
    eval 'sub MDT_STRUCT_VERSION () {1;}' unless defined(&MDT_STRUCT_VERSION);
    eval 'sub MDT_SETNAME () {"modmetadata_set";}' unless defined(&MDT_SETNAME);
    eval("sub MOD_LOAD () { 0; }") unless defined(&MOD_LOAD);
    eval("sub MOD_UNLOAD () { 1; }") unless defined(&MOD_UNLOAD);
    eval("sub MOD_SHUTDOWN () { 2; }") unless defined(&MOD_SHUTDOWN);
    eval("sub MOD_QUIESCE () { 3; }") unless defined(&MOD_QUIESCE);
    if(defined(&_KERNEL)) {
	require 'sys/linker_set.ph';
	eval 'sub MODULE_METADATA {
	    my($uniquifier, $type, $data, $cval) = @_;
    	    eval q( &static \'struct mod_metadata\'  &_mod_metadata$uniquifier = {  &MDT_STRUCT_VERSION, $type, $data, $cval };  &DATA_SET( &modmetadata_set,  &_mod_metadata$uniquifier));
	}' unless defined(&MODULE_METADATA);
	eval 'sub MODULE_DEPEND {
	    my($module, $mdepend, $vmin, $vpref, $vmax) = @_;
    	    eval q( &static \'struct mod_depend\'  &_$module &_depend_on_$mdepend = { $vmin, $vpref, $vmax };  &MODULE_METADATA( &_md_$module &_on_$mdepend,  &MDT_DEPEND, & &_$module &_depend_on_$mdepend, $mdepend));
	}' unless defined(&MODULE_DEPEND);
	eval 'sub MODULE_KERNEL_MAXVER () {( &roundup( &__FreeBSD_version, 100000) - 1);}' unless defined(&MODULE_KERNEL_MAXVER);
	eval 'sub DECLARE_MODULE_WITH_MAXVER {
	    my($name, $data, $sub, $order, $maxver) = @_;
    	    eval q( &MODULE_DEPEND($name,  &kernel,  &__FreeBSD_version,  &__FreeBSD_version, $maxver);  &MODULE_METADATA( &_md_$name,  &MDT_MODULE, $data, $name);  &SYSINIT($name &module, $sub, $order,  &module_register_init, $data); \'struct __hack\');
	}' unless defined(&DECLARE_MODULE_WITH_MAXVER);
	eval 'sub DECLARE_MODULE {
	    my($name, $data, $sub, $order) = @_;
    	    eval q( &DECLARE_MODULE_WITH_MAXVER($name, $data, $sub, $order,  &MODULE_KERNEL_MAXVER));
	}' unless defined(&DECLARE_MODULE);
	eval 'sub DECLARE_MODULE_TIED {
	    my($name, $data, $sub, $order) = @_;
    	    eval q( &DECLARE_MODULE_WITH_MAXVER($name, $data, $sub, $order,  &__FreeBSD_version));
	}' unless defined(&DECLARE_MODULE_TIED);
	eval 'sub MODULE_VERSION {
	    my($module, $version) = @_;
    	    eval q( &static \'struct mod_version\'  &_$module &_version = { $version };  &MODULE_METADATA( &_$module &_version,  &MDT_VERSION, & &_$module &_version, $module));
	}' unless defined(&MODULE_VERSION);
	eval 'sub MOD_XLOCK () { &sx_xlock( &modules_sx);}' unless defined(&MOD_XLOCK);
	eval 'sub MOD_SLOCK () { &sx_slock( &modules_sx);}' unless defined(&MOD_SLOCK);
	eval 'sub MOD_XUNLOCK () { &sx_xunlock( &modules_sx);}' unless defined(&MOD_XUNLOCK);
	eval 'sub MOD_SUNLOCK () { &sx_sunlock( &modules_sx);}' unless defined(&MOD_SUNLOCK);
	eval 'sub MOD_LOCK_ASSERT () { &sx_assert( &modules_sx,  &SX_LOCKED);}' unless defined(&MOD_LOCK_ASSERT);
	eval 'sub MOD_XLOCK_ASSERT () { &sx_assert( &modules_sx,  &SX_XLOCKED);}' unless defined(&MOD_XLOCK_ASSERT);
	if(defined(&MOD_DEBUG)) {
	    eval 'sub MOD_DEBUG_REFS () {1;}' unless defined(&MOD_DEBUG_REFS);
	    eval 'sub MOD_DPF {
	        my($cat, $args) = @_;
    		eval q( &do {  &if ( &mod_debug &  &MOD_DEBUG_$cat)  &printf($args); }  &while (0));
	    }' unless defined(&MOD_DPF);
	} else {
	    eval 'sub MOD_DPF {
	        my($cat, $args) = @_;
    		eval q();
	    }' unless defined(&MOD_DPF);
	}
    }
    eval 'sub MAXMODNAME () {32;}' unless defined(&MAXMODNAME);
    unless(defined(&_KERNEL)) {
	require 'sys/cdefs.ph';
    }
}
1;
