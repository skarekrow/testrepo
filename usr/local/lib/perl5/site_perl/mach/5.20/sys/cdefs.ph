require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_CDEFS_H_)) {
    eval 'sub _SYS_CDEFS_H_ () {1;}' unless defined(&_SYS_CDEFS_H_);
    unless(defined(&__has_extension)) {
	eval 'sub __has_extension () { &__has_feature;}' unless defined(&__has_extension);
    }
    unless(defined(&__has_feature)) {
	eval 'sub __has_feature {
	    my($x) = @_;
    	    eval q(0);
	}' unless defined(&__has_feature);
    }
    unless(defined(&__has_include)) {
	eval 'sub __has_include {
	    my($x) = @_;
    	    eval q(0);
	}' unless defined(&__has_include);
    }
    unless(defined(&__has_builtin)) {
	eval 'sub __has_builtin {
	    my($x) = @_;
    	    eval q(0);
	}' unless defined(&__has_builtin);
    }
    if(defined(&__cplusplus)) {
	eval 'sub __BEGIN_DECLS () { &extern "C" {;}' unless defined(&__BEGIN_DECLS);
	eval 'sub __END_DECLS () {};}' unless defined(&__END_DECLS);
    } else {
	eval 'sub __BEGIN_DECLS () {1;}' unless defined(&__BEGIN_DECLS);
	eval 'sub __END_DECLS () {1;}' unless defined(&__END_DECLS);
    }
    if(defined(&__GNUC__) || defined(&__INTEL_COMPILER)) {
	if((defined(&__GNUC__) ? &__GNUC__ : undef) >= 3|| defined(&__INTEL_COMPILER)) {
	    eval 'sub __GNUCLIKE_ASM () {3;}' unless defined(&__GNUCLIKE_ASM);
	    eval 'sub __GNUCLIKE_MATH_BUILTIN_CONSTANTS () {1;}' unless defined(&__GNUCLIKE_MATH_BUILTIN_CONSTANTS);
	} else {
	    eval 'sub __GNUCLIKE_ASM () {2;}' unless defined(&__GNUCLIKE_ASM);
	}
	eval 'sub __GNUCLIKE___TYPEOF () {1;}' unless defined(&__GNUCLIKE___TYPEOF);
	eval 'sub __GNUCLIKE___OFFSETOF () {1;}' unless defined(&__GNUCLIKE___OFFSETOF);
	eval 'sub __GNUCLIKE___SECTION () {1;}' unless defined(&__GNUCLIKE___SECTION);
	unless(defined(&__INTEL_COMPILER)) {
	    eval 'sub __GNUCLIKE_CTOR_SECTION_HANDLING () {1;}' unless defined(&__GNUCLIKE_CTOR_SECTION_HANDLING);
	}
	eval 'sub __GNUCLIKE_BUILTIN_CONSTANT_P () {1;}' unless defined(&__GNUCLIKE_BUILTIN_CONSTANT_P);
	if(defined(&__INTEL_COMPILER)  && defined(&__cplusplus)  && (defined(&__INTEL_COMPILER) ? &__INTEL_COMPILER : undef) < 800) {
	    undef(&__GNUCLIKE_BUILTIN_CONSTANT_P) if defined(&__GNUCLIKE_BUILTIN_CONSTANT_P);
	}
	if(((defined(&__GNUC_MINOR__) ? &__GNUC_MINOR__ : undef) > 95|| (defined(&__GNUC__) ? &__GNUC__ : undef) >= 3)  && !defined(&__INTEL_COMPILER)) {
	    eval 'sub __GNUCLIKE_BUILTIN_VARARGS () {1;}' unless defined(&__GNUCLIKE_BUILTIN_VARARGS);
	    eval 'sub __GNUCLIKE_BUILTIN_STDARG () {1;}' unless defined(&__GNUCLIKE_BUILTIN_STDARG);
	    eval 'sub __GNUCLIKE_BUILTIN_VAALIST () {1;}' unless defined(&__GNUCLIKE_BUILTIN_VAALIST);
	}
	if(defined(&__GNUC__)) {
	    eval 'sub __GNUC_VA_LIST_COMPATIBILITY () {1;}' unless defined(&__GNUC_VA_LIST_COMPATIBILITY);
	}
	if(defined(&__GNUC__)) {
	    eval 'sub __compiler_membar () {
	        eval q( &__asm  &__volatile(\\" \\" : : : \\"memory\\"));
	    }' unless defined(&__compiler_membar);
	}
	unless(defined(&__INTEL_COMPILER)) {
	    eval 'sub __GNUCLIKE_BUILTIN_NEXT_ARG () {1;}' unless defined(&__GNUCLIKE_BUILTIN_NEXT_ARG);
	    eval 'sub __GNUCLIKE_MATH_BUILTIN_RELOPS () {1;}' unless defined(&__GNUCLIKE_MATH_BUILTIN_RELOPS);
	}
	eval 'sub __GNUCLIKE_BUILTIN_MEMCPY () {1;}' unless defined(&__GNUCLIKE_BUILTIN_MEMCPY);
	eval 'sub __CC_SUPPORTS_INLINE () {1;}' unless defined(&__CC_SUPPORTS_INLINE);
	eval 'sub __CC_SUPPORTS___INLINE () {1;}' unless defined(&__CC_SUPPORTS___INLINE);
	eval 'sub __CC_SUPPORTS___INLINE__ () {1;}' unless defined(&__CC_SUPPORTS___INLINE__);
	eval 'sub __CC_SUPPORTS___FUNC__ () {1;}' unless defined(&__CC_SUPPORTS___FUNC__);
	eval 'sub __CC_SUPPORTS_WARNING () {1;}' unless defined(&__CC_SUPPORTS_WARNING);
	eval 'sub __CC_SUPPORTS_VARADIC_XXX () {1;}' unless defined(&__CC_SUPPORTS_VARADIC_XXX);
	eval 'sub __CC_SUPPORTS_DYNAMIC_ARRAY_INIT () {1;}' unless defined(&__CC_SUPPORTS_DYNAMIC_ARRAY_INIT);
    }
    if(defined(&__GNUC__)  && !defined(&__INTEL_COMPILER)) {
	eval 'sub __GNUC_PREREQ__ {
	    my($ma, $mi) = @_;
    	    eval q(( &__GNUC__ > ($ma) ||  &__GNUC__ == ($ma)  &&  &__GNUC_MINOR__ >= ($mi)));
	}' unless defined(&__GNUC_PREREQ__);
    } else {
	eval 'sub __GNUC_PREREQ__ {
	    my($ma, $mi) = @_;
    	    eval q(0);
	}' unless defined(&__GNUC_PREREQ__);
    }
    if(defined(&__STDC__) || defined(&__cplusplus)) {
	eval 'sub __P {
	    my($protos) = @_;
    	    eval q($protos);
	}' unless defined(&__P);
	eval 'sub __CONCAT1 {
	    my($x,$y) = @_;
    	    eval q($x  $y);
	}' unless defined(&__CONCAT1);
	eval 'sub __CONCAT {
	    my($x,$y) = @_;
    	    eval q( &__CONCAT1($x,$y));
	}' unless defined(&__CONCAT);
	eval 'sub __STRING {
	    my($x) = @_;
    	    eval q($x);
	}' unless defined(&__STRING);
	eval 'sub __XSTRING {
	    my($x) = @_;
    	    eval q( &__STRING($x));
	}' unless defined(&__XSTRING);
	eval 'sub __const () { &const;}' unless defined(&__const);
	eval 'sub __signed () {\'signed\';}' unless defined(&__signed);
	eval 'sub __volatile () { &volatile;}' unless defined(&__volatile);
	if(defined(&__cplusplus)) {
	    eval 'sub __inline () { &inline;}' unless defined(&__inline);
	} else {
	    if(!(defined(&__CC_SUPPORTS___INLINE))) {
		eval 'sub __inline () {1;}' unless defined(&__inline);
	    }
	}
    } else {
	eval 'sub __P {
	    my($protos) = @_;
    	    eval q(());
	}' unless defined(&__P);
	eval 'sub __CONCAT {
	    my($x,$y) = @_;
    	    eval q($x $y);
	}' unless defined(&__CONCAT);
	eval 'sub __STRING {
	    my($x) = @_;
    	    eval q(\\"x\\");
	}' unless defined(&__STRING);
	if(!defined(&__CC_SUPPORTS___INLINE)) {
	    eval 'sub __const () {1;}' unless defined(&__const);
	    eval 'sub __inline () {1;}' unless defined(&__inline);
	    eval 'sub __signed () {1;}' unless defined(&__signed);
	    eval 'sub __volatile () {1;}' unless defined(&__volatile);
	    unless(defined(&NO_ANSI_KEYWORDS)) {
		eval 'sub const () {1;}' unless defined(&const);
		eval 'sub inline () {1;}' unless defined(&inline);
		eval 'sub signed () {1;}' unless defined(&signed);
		eval 'sub volatile () {1;}' unless defined(&volatile);
	    }
	}
    }
    if(defined(&lint)) {
	eval 'sub __dead2 () {1;}' unless defined(&__dead2);
	eval 'sub __pure2 () {1;}' unless defined(&__pure2);
	eval 'sub __unused () {1;}' unless defined(&__unused);
	eval 'sub __packed () {1;}' unless defined(&__packed);
	eval 'sub __aligned {
	    my($x) = @_;
    	    eval q();
	}' unless defined(&__aligned);
	eval 'sub __section {
	    my($x) = @_;
    	    eval q();
	}' unless defined(&__section);
    } else {
	if(! &__GNUC_PREREQ__(2, 5)  && !defined(&__INTEL_COMPILER)) {
	    eval 'sub __dead2 () {1;}' unless defined(&__dead2);
	    eval 'sub __pure2 () {1;}' unless defined(&__pure2);
	    eval 'sub __unused () {1;}' unless defined(&__unused);
	}
	if((defined(&__GNUC__) ? &__GNUC__ : undef) == 2 && (defined(&__GNUC_MINOR__) ? &__GNUC_MINOR__ : undef) >= 5 && (defined(&__GNUC_MINOR__) ? &__GNUC_MINOR__ : undef) < 7 && !defined(&__INTEL_COMPILER)) {
	    eval 'sub __dead2 () { &__attribute__(( &__noreturn__));}' unless defined(&__dead2);
	    eval 'sub __pure2 () { &__attribute__(( &__const__));}' unless defined(&__pure2);
	    eval 'sub __unused () {1;}' unless defined(&__unused);
	}
	if( &__GNUC_PREREQ__(2, 7)) {
	    eval 'sub __dead2 () { &__attribute__(( &__noreturn__));}' unless defined(&__dead2);
	    eval 'sub __pure2 () { &__attribute__(( &__const__));}' unless defined(&__pure2);
	    eval 'sub __unused () { &__attribute__(( &__unused__));}' unless defined(&__unused);
	    eval 'sub __used () { &__attribute__(( &__used__));}' unless defined(&__used);
	    eval 'sub __packed () { &__attribute__(( &__packed__));}' unless defined(&__packed);
	    eval 'sub __aligned {
	        my($x) = @_;
    		eval q( &__attribute__(( &__aligned__($x))));
	    }' unless defined(&__aligned);
	    eval 'sub __section {
	        my($x) = @_;
    		eval q( &__attribute__(( &__section__($x))));
	    }' unless defined(&__section);
	}
	if(defined(&__INTEL_COMPILER)) {
	    eval 'sub __dead2 () { &__attribute__(( &__noreturn__));}' unless defined(&__dead2);
	    eval 'sub __pure2 () { &__attribute__(( &__const__));}' unless defined(&__pure2);
	    eval 'sub __unused () { &__attribute__(( &__unused__));}' unless defined(&__unused);
	    eval 'sub __used () { &__attribute__(( &__used__));}' unless defined(&__used);
	    eval 'sub __packed () { &__attribute__(( &__packed__));}' unless defined(&__packed);
	    eval 'sub __aligned {
	        my($x) = @_;
    		eval q( &__attribute__(( &__aligned__($x))));
	    }' unless defined(&__aligned);
	    eval 'sub __section {
	        my($x) = @_;
    		eval q( &__attribute__(( &__section__($x))));
	    }' unless defined(&__section);
	}
    }
    if(! &__GNUC_PREREQ__(2, 95)) {
	eval 'sub __alignof {
	    my($x) = @_;
    	    eval q( &__offsetof(\'struct struct\' { \'char\'  &__a; $x  &__b; },  &__b));
	}' unless defined(&__alignof);
    }
    if(!defined(&__STDC_VERSION__) || (defined(&__STDC_VERSION__) ? &__STDC_VERSION__ : undef) < 201112) {
	if(! &__has_extension((defined(&c_alignas) ? &c_alignas : undef))) {
	    if((defined(&__cplusplus)  && (defined(&__cplusplus) ? &__cplusplus : undef) >= 201103) ||  &__has_extension((defined(&cxx_alignas) ? &cxx_alignas : undef))) {
		eval 'sub _Alignas {
		    my($x) = @_;
    		    eval q( &alignas($x));
		}' unless defined(&_Alignas);
	    } else {
		eval 'sub _Alignas {
		    my($x) = @_;
    		    eval q( &__aligned($x));
		}' unless defined(&_Alignas);
	    }
	}
	if(defined(&__cplusplus)  && (defined(&__cplusplus) ? &__cplusplus : undef) >= 201103) {
	    eval 'sub _Alignof {
	        my($x) = @_;
    		eval q( &alignof($x));
	    }' unless defined(&_Alignof);
	} else {
	    eval 'sub _Alignof {
	        my($x) = @_;
    		eval q( &__alignof($x));
	    }' unless defined(&_Alignof);
	}
	if(! &__has_extension((defined(&c_atomic) ? &c_atomic : undef))  && ! &__has_extension((defined(&cxx_atomic) ? &cxx_atomic : undef))) {
	    eval 'sub _Atomic {
	        my($T) = @_;
    		eval q(\'struct struct\' { $T  &volatile  &__val; });
	    }' unless defined(&_Atomic);
	}
	if(defined(&__cplusplus)  && (defined(&__cplusplus) ? &__cplusplus : undef) >= 201103) {
	    eval 'sub _Noreturn () {[[ &noreturn]];}' unless defined(&_Noreturn);
	} else {
	    eval 'sub _Noreturn () { &__dead2;}' unless defined(&_Noreturn);
	}
	if(! &__has_extension((defined(&c_static_assert) ? &c_static_assert : undef))) {
	    if((defined(&__cplusplus)  && (defined(&__cplusplus) ? &__cplusplus : undef) >= 201103) ||  &__has_extension((defined(&cxx_static_assert) ? &cxx_static_assert : undef))) {
		eval 'sub _Static_assert {
		    my($x, $y) = @_;
    		    eval q( &static_assert($x, $y));
		}' unless defined(&_Static_assert);
	    }
 elsif(defined(&__COUNTER__)) {
		eval 'sub _Static_assert {
		    my($x, $y) = @_;
    		    eval q( &__Static_assert($x,  &__COUNTER__));
		}' unless defined(&_Static_assert);
		eval 'sub __Static_assert {
		    my($x, $y) = @_;
    		    eval q( &___Static_assert($x, $y));
		}' unless defined(&__Static_assert);
		eval 'sub ___Static_assert {
		    my($x, $y) = @_;
    		    eval q( &typedef \'char\'  &__assert_  $y->[($x) ? 1: -1]);
		}' unless defined(&___Static_assert);
	    } else {
		eval 'sub _Static_assert {
		    my($x, $y) = @_;
    		    eval q(\'struct __hack\');
		}' unless defined(&_Static_assert);
	    }
	}
	if(! &__has_extension((defined(&c_thread_local) ? &c_thread_local : undef))) {
	    if( &__has_extension((defined(&cxx_thread_local) ? &cxx_thread_local : undef))) {
		eval 'sub _Thread_local () { &thread_local;}' unless defined(&_Thread_local);
	    } else {
		eval 'sub _Thread_local () { &__thread;}' unless defined(&_Thread_local);
	    }
	}
    }
    if(defined(&__STDC_VERSION__)  && (defined(&__STDC_VERSION__) ? &__STDC_VERSION__ : undef) >= 201112) {
	eval 'sub __generic {
	    my($expr, $t, $yes, $no) = @_;
    	    eval q( &_Generic($expr, $t: $yes,  &default: $no));
	}' unless defined(&__generic);
    }
 elsif( &__GNUC_PREREQ__(3, 1)  && !defined(&__cplusplus)) {
	eval 'sub __generic {
	    my($expr, $t, $yes, $no) = @_;
    	    eval q( &__builtin_choose_expr(  &__builtin_types_compatible_p( &__typeof($expr), $t), $yes, $no));
	}' unless defined(&__generic);
    }
    if( &__GNUC_PREREQ__(2, 96)) {
	eval 'sub __malloc_like () { &__attribute__(( &__malloc__));}' unless defined(&__malloc_like);
	eval 'sub __pure () { &__attribute__(( &__pure__));}' unless defined(&__pure);
    } else {
	eval 'sub __malloc_like () {1;}' unless defined(&__malloc_like);
	eval 'sub __pure () {1;}' unless defined(&__pure);
    }
    if( &__GNUC_PREREQ__(3, 1) || (defined(&__INTEL_COMPILER)  && (defined(&__INTEL_COMPILER) ? &__INTEL_COMPILER : undef) >= 800)) {
	eval 'sub __always_inline () { &__attribute__(( &__always_inline__));}' unless defined(&__always_inline);
    } else {
	eval 'sub __always_inline () {1;}' unless defined(&__always_inline);
    }
    if( &__GNUC_PREREQ__(3, 1)) {
	eval 'sub __noinline () { &__attribute__ (( &__noinline__));}' unless defined(&__noinline);
    } else {
	eval 'sub __noinline () {1;}' unless defined(&__noinline);
    }
    if( &__GNUC_PREREQ__(3, 3)) {
	eval 'sub __nonnull {
	    my($x) = @_;
    	    eval q( &__attribute__(( &__nonnull__($x))));
	}' unless defined(&__nonnull);
    } else {
	eval 'sub __nonnull {
	    my($x) = @_;
    	    eval q();
	}' unless defined(&__nonnull);
    }
    if( &__GNUC_PREREQ__(3, 4)) {
	eval 'sub __fastcall () { &__attribute__(( &__fastcall__));}' unless defined(&__fastcall);
    } else {
	eval 'sub __fastcall () {1;}' unless defined(&__fastcall);
    }
    if( &__GNUC_PREREQ__(4, 1)) {
	eval 'sub __returns_twice () { &__attribute__(( &__returns_twice__));}' unless defined(&__returns_twice);
    } else {
	eval 'sub __returns_twice () {1;}' unless defined(&__returns_twice);
    }
    if(! &__GNUC_PREREQ__(2, 7)  && !defined(&__INTEL_COMPILER)) {
	eval 'sub __func__ () { &NULL;}' unless defined(&__func__);
    }
    if((defined(&__INTEL_COMPILER) || (defined(&__GNUC__)  && (defined(&__GNUC__) ? &__GNUC__ : undef) >= 2))  && !defined(&__STRICT_ANSI__) || (defined(&__STDC_VERSION__) ? &__STDC_VERSION__ : undef) >= 199901) {
	eval 'sub __LONG_LONG_SUPPORTED () {1;}' unless defined(&__LONG_LONG_SUPPORTED);
    }
    if(defined(&__cplusplus)  && (defined(&__cplusplus) ? &__cplusplus : undef) >= 201103) {
	eval 'sub __LONG_LONG_SUPPORTED () {1;}' unless defined(&__LONG_LONG_SUPPORTED);
	unless(defined(&__STDC_LIMIT_MACROS)) {
	    eval 'sub __STDC_LIMIT_MACROS () {1;}' unless defined(&__STDC_LIMIT_MACROS);
	}
	unless(defined(&__STDC_CONSTANT_MACROS)) {
	    eval 'sub __STDC_CONSTANT_MACROS () {1;}' unless defined(&__STDC_CONSTANT_MACROS);
	}
    }
    if(!((defined(&__GNUC__) ? &__GNUC__ : undef) == 2 && (defined(&__GNUC_MINOR__) ? &__GNUC_MINOR__ : undef) == 95)) {
	if(!defined(&__STDC_VERSION__) || (defined(&__STDC_VERSION__) ? &__STDC_VERSION__ : undef) < 199901|| defined(&lint)) {
	    eval 'sub __restrict () {1;}' unless defined(&__restrict);
	} else {
	    eval 'sub __restrict () { &restrict;}' unless defined(&__restrict);
	}
    }
    if( &__GNUC_PREREQ__(2, 96)) {
	eval 'sub __predict_true {
	    my($exp) = @_;
    	    eval q( &__builtin_expect(($exp), 1));
	}' unless defined(&__predict_true);
	eval 'sub __predict_false {
	    my($exp) = @_;
    	    eval q( &__builtin_expect(($exp), 0));
	}' unless defined(&__predict_false);
    } else {
	eval 'sub __predict_true {
	    my($exp) = @_;
    	    eval q(($exp));
	}' unless defined(&__predict_true);
	eval 'sub __predict_false {
	    my($exp) = @_;
    	    eval q(($exp));
	}' unless defined(&__predict_false);
    }
    if( &__GNUC_PREREQ__(4, 2)) {
	eval 'sub __hidden () { &__attribute__(( &__visibility__("hidden")));}' unless defined(&__hidden);
	eval 'sub __exported () { &__attribute__(( &__visibility__("default")));}' unless defined(&__exported);
    } else {
	eval 'sub __hidden () {1;}' unless defined(&__hidden);
	eval 'sub __exported () {1;}' unless defined(&__exported);
    }
    if( &__GNUC_PREREQ__(4, 1)) {
	eval 'sub __offsetof {
	    my($type, $field) = @_;
    	    eval q( &__builtin_offsetof($type, $field));
	}' unless defined(&__offsetof);
    } else {
	unless(defined(&__cplusplus)) {
	    eval 'sub __offsetof {
	        my($type, $field) = @_;
    		eval q((( &__size_t)( &__uintptr_t)(( &const  &volatile  &void *)(($type *)0)->$field)));
	    }' unless defined(&__offsetof);
	} else {
	    eval 'sub __offsetof {
	        my($type, $field) = @_;
    		eval q(( &__offsetof__ ( &reinterpret_cast < &__size_t> ( &reinterpret_cast < &const  &volatile \'char\' &> ( &static_cast<$type *> (0)->$field)))));
	    }' unless defined(&__offsetof);
	}
    }
    eval 'sub __rangeof {
        my($type, $start, $end) = @_;
	    eval q(( &__offsetof($type, $end) -  &__offsetof($type, $start)));
    }' unless defined(&__rangeof);
    if( &__GNUC_PREREQ__(3, 1)) {
	eval 'sub __containerof {
	    my($x, $s, $m) = @_;
    	    eval q(({  &const  &volatile  &__typeof((($s *)0)->$m) * &__x = ($x);  &__DEQUALIFY($s *, ( &const  &volatile \'char\' *) &__x -  &__offsetof($s, $m));}));
	}' unless defined(&__containerof);
    } else {
	eval 'sub __containerof {
	    my($x, $s, $m) = @_;
    	    eval q( &__DEQUALIFY($s *, ( &const  &volatile \'char\' *)($x) -  &__offsetof($s, $m)));
	}' unless defined(&__containerof);
    }
    if(! &__GNUC_PREREQ__(2, 7)  && !defined(&__INTEL_COMPILER)) {
	eval 'sub __printflike {
	    my($fmtarg, $firstvararg) = @_;
    	    eval q();
	}' unless defined(&__printflike);
	eval 'sub __scanflike {
	    my($fmtarg, $firstvararg) = @_;
    	    eval q();
	}' unless defined(&__scanflike);
	eval 'sub __format_arg {
	    my($fmtarg) = @_;
    	    eval q();
	}' unless defined(&__format_arg);
	eval 'sub __strfmonlike {
	    my($fmtarg, $firstvararg) = @_;
    	    eval q();
	}' unless defined(&__strfmonlike);
	eval 'sub __strftimelike {
	    my($fmtarg, $firstvararg) = @_;
    	    eval q();
	}' unless defined(&__strftimelike);
    } else {
	eval 'sub __printflike {
	    my($fmtarg, $firstvararg) = @_;
    	    eval q( &__attribute__(( &__format__ ( &__printf__, $fmtarg, $firstvararg))));
	}' unless defined(&__printflike);
	eval 'sub __scanflike {
	    my($fmtarg, $firstvararg) = @_;
    	    eval q( &__attribute__(( &__format__ ( &__scanf__, $fmtarg, $firstvararg))));
	}' unless defined(&__scanflike);
	eval 'sub __format_arg {
	    my($fmtarg) = @_;
    	    eval q( &__attribute__(( &__format_arg__ ($fmtarg))));
	}' unless defined(&__format_arg);
	eval 'sub __strfmonlike {
	    my($fmtarg, $firstvararg) = @_;
    	    eval q( &__attribute__(( &__format__ ( &__strfmon__, $fmtarg, $firstvararg))));
	}' unless defined(&__strfmonlike);
	eval 'sub __strftimelike {
	    my($fmtarg, $firstvararg) = @_;
    	    eval q( &__attribute__(( &__format__ ( &__strftime__, $fmtarg, $firstvararg))));
	}' unless defined(&__strftimelike);
    }
    if(defined(&__FreeBSD_cc_version)  && (defined(&__FreeBSD_cc_version) ? &__FreeBSD_cc_version : undef) >= 300001 && defined(&__GNUC__)  && !defined(&__INTEL_COMPILER)) {
	eval 'sub __printf0like {
	    my($fmtarg, $firstvararg) = @_;
    	    eval q( &__attribute__(( &__format__ ( &__printf0__, $fmtarg, $firstvararg))));
	}' unless defined(&__printf0like);
    } else {
	eval 'sub __printf0like {
	    my($fmtarg, $firstvararg) = @_;
    	    eval q();
	}' unless defined(&__printf0like);
    }
    if(defined(&__GNUC__) || defined(&__INTEL_COMPILER)) {
	unless(defined(&__INTEL_COMPILER)) {
	    eval 'sub __strong_reference {
	        my($sym,$aliassym) = @_;
    		eval q( &extern  &__typeof ($sym) $aliassym  &__attribute__ (( &__alias__ ($sym))));
	    }' unless defined(&__strong_reference);
	}
	if(defined(&__STDC__)) {
	    eval 'sub __weak_reference {
	        my($sym,$alias) = @_;
    		eval q(\\"(assembly code)\\");
	    }' unless defined(&__weak_reference);
	    eval 'sub __warn_references {
	        my($sym,$msg) = @_;
    		eval q(\\"(assembly code)\\");
	    }' unless defined(&__warn_references);
	    eval 'sub __sym_compat {
	        my($sym,$impl,$verid) = @_;
    		eval q(\\"(assembly code)\\");
	    }' unless defined(&__sym_compat);
	    eval 'sub __sym_default {
	        my($sym,$impl,$verid) = @_;
    		eval q(\\"(assembly code)\\");
	    }' unless defined(&__sym_default);
	} else {
	    eval 'sub __weak_reference {
	        my($sym,$alias) = @_;
    		eval q(\\"(assembly code)\\");
	    }' unless defined(&__weak_reference);
	    eval 'sub __warn_references {
	        my($sym,$msg) = @_;
    		eval q(\\"(assembly code)\\");
	    }' unless defined(&__warn_references);
	    eval 'sub __sym_compat {
	        my($sym,$impl,$verid) = @_;
    		eval q(\\"(assembly code)\\");
	    }' unless defined(&__sym_compat);
	    eval 'sub __sym_default {
	        my($impl,$sym,$verid) = @_;
    		eval q(\\"(assembly code)\\");
	    }' unless defined(&__sym_default);
	}
    }
    eval 'sub __GLOBL1 {
        my($sym) = @_;
	    eval q(\\"(assembly code)\\");
    }' unless defined(&__GLOBL1);
    eval 'sub __GLOBL {
        my($sym) = @_;
	    eval q( &__GLOBL1($sym));
    }' unless defined(&__GLOBL);
    if(defined(&__GNUC__) || defined(&__INTEL_COMPILER)) {
	eval 'sub __IDSTRING {
	    my($name,$string) = @_;
    	    eval q(\\"(assembly code)\\");
	}' unless defined(&__IDSTRING);
    } else {
	eval 'sub __IDSTRING {
	    my($name,$string) = @_;
    	    eval q( &static  &const \'char\' $name->[]  &__unused = $string);
	}' unless defined(&__IDSTRING);
    }
    unless(defined(&__FBSDID)) {
	if(!defined(&lint)  && !defined(&STRIP_FBSDID)) {
	    eval 'sub __FBSDID {
	        my($s) = @_;
    		eval q( &__IDSTRING( &__CONCAT( &__rcsid_, &__LINE__),$s));
	    }' unless defined(&__FBSDID);
	} else {
	    eval 'sub __FBSDID {
	        my($s) = @_;
    		eval q(\'struct __hack\');
	    }' unless defined(&__FBSDID);
	}
    }
    unless(defined(&__RCSID)) {
	unless(defined(&NO__RCSID)) {
	    eval 'sub __RCSID {
	        my($s) = @_;
    		eval q( &__IDSTRING( &__CONCAT( &__rcsid_, &__LINE__),$s));
	    }' unless defined(&__RCSID);
	} else {
	    eval 'sub __RCSID {
	        my($s) = @_;
    		eval q(\'struct __hack\');
	    }' unless defined(&__RCSID);
	}
    }
    unless(defined(&__RCSID_SOURCE)) {
	unless(defined(&NO__RCSID_SOURCE)) {
	    eval 'sub __RCSID_SOURCE {
	        my($s) = @_;
    		eval q( &__IDSTRING( &__CONCAT( &__rcsid_source_, &__LINE__),$s));
	    }' unless defined(&__RCSID_SOURCE);
	} else {
	    eval 'sub __RCSID_SOURCE {
	        my($s) = @_;
    		eval q(\'struct __hack\');
	    }' unless defined(&__RCSID_SOURCE);
	}
    }
    unless(defined(&__SCCSID)) {
	unless(defined(&NO__SCCSID)) {
	    eval 'sub __SCCSID {
	        my($s) = @_;
    		eval q( &__IDSTRING( &__CONCAT( &__sccsid_, &__LINE__),$s));
	    }' unless defined(&__SCCSID);
	} else {
	    eval 'sub __SCCSID {
	        my($s) = @_;
    		eval q(\'struct __hack\');
	    }' unless defined(&__SCCSID);
	}
    }
    unless(defined(&__COPYRIGHT)) {
	unless(defined(&NO__COPYRIGHT)) {
	    eval 'sub __COPYRIGHT {
	        my($s) = @_;
    		eval q( &__IDSTRING( &__CONCAT( &__copyright_, &__LINE__),$s));
	    }' unless defined(&__COPYRIGHT);
	} else {
	    eval 'sub __COPYRIGHT {
	        my($s) = @_;
    		eval q(\'struct __hack\');
	    }' unless defined(&__COPYRIGHT);
	}
    }
    unless(defined(&__DECONST)) {
	eval 'sub __DECONST {
	    my($type, $var) = @_;
    	    eval q((($type)( &__uintptr_t)( &const  &void *)($var)));
	}' unless defined(&__DECONST);
    }
    unless(defined(&__DEVOLATILE)) {
	eval 'sub __DEVOLATILE {
	    my($type, $var) = @_;
    	    eval q((($type)( &__uintptr_t)( &volatile  &void *)($var)));
	}' unless defined(&__DEVOLATILE);
    }
    unless(defined(&__DEQUALIFY)) {
	eval 'sub __DEQUALIFY {
	    my($type, $var) = @_;
    	    eval q((($type)( &__uintptr_t)( &const  &volatile  &void *)($var)));
	}' unless defined(&__DEQUALIFY);
    }
    if(defined(&_POSIX_C_SOURCE)  && (defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : undef) == 1) {
	undef(&_POSIX_C_SOURCE) if defined(&_POSIX_C_SOURCE);
	eval 'sub _POSIX_C_SOURCE () {199009;}' unless defined(&_POSIX_C_SOURCE);
    }
    if(defined(&_POSIX_C_SOURCE)  && (defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : undef) == 2) {
	undef(&_POSIX_C_SOURCE) if defined(&_POSIX_C_SOURCE);
	eval 'sub _POSIX_C_SOURCE () {199209;}' unless defined(&_POSIX_C_SOURCE);
    }
    if(defined(&_XOPEN_SOURCE)) {
	if((defined(&_XOPEN_SOURCE) ? &_XOPEN_SOURCE : undef) - 0>= 700) {
	    eval 'sub __XSI_VISIBLE () {700;}' unless defined(&__XSI_VISIBLE);
	    undef(&_POSIX_C_SOURCE) if defined(&_POSIX_C_SOURCE);
	    eval 'sub _POSIX_C_SOURCE () {200809;}' unless defined(&_POSIX_C_SOURCE);
	}
 elsif((defined(&_XOPEN_SOURCE) ? &_XOPEN_SOURCE : undef) - 0>= 600) {
	    eval 'sub __XSI_VISIBLE () {600;}' unless defined(&__XSI_VISIBLE);
	    undef(&_POSIX_C_SOURCE) if defined(&_POSIX_C_SOURCE);
	    eval 'sub _POSIX_C_SOURCE () {200112;}' unless defined(&_POSIX_C_SOURCE);
	}
 elsif((defined(&_XOPEN_SOURCE) ? &_XOPEN_SOURCE : undef) - 0>= 500) {
	    eval 'sub __XSI_VISIBLE () {500;}' unless defined(&__XSI_VISIBLE);
	    undef(&_POSIX_C_SOURCE) if defined(&_POSIX_C_SOURCE);
	    eval 'sub _POSIX_C_SOURCE () {199506;}' unless defined(&_POSIX_C_SOURCE);
	}
    }
    if(defined(&_POSIX_SOURCE)  && !defined(&_POSIX_C_SOURCE)) {
	eval 'sub _POSIX_C_SOURCE () {198808;}' unless defined(&_POSIX_C_SOURCE);
    }
    if(defined(&_POSIX_C_SOURCE)) {
	if((defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : undef) >= 200809) {
	    eval 'sub __POSIX_VISIBLE () {200809;}' unless defined(&__POSIX_VISIBLE);
	    eval 'sub __ISO_C_VISIBLE () {1999;}' unless defined(&__ISO_C_VISIBLE);
	}
 elsif((defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : undef) >= 200112) {
	    eval 'sub __POSIX_VISIBLE () {200112;}' unless defined(&__POSIX_VISIBLE);
	    eval 'sub __ISO_C_VISIBLE () {1999;}' unless defined(&__ISO_C_VISIBLE);
	}
 elsif((defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : undef) >= 199506) {
	    eval 'sub __POSIX_VISIBLE () {199506;}' unless defined(&__POSIX_VISIBLE);
	    eval 'sub __ISO_C_VISIBLE () {1990;}' unless defined(&__ISO_C_VISIBLE);
	}
 elsif((defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : undef) >= 199309) {
	    eval 'sub __POSIX_VISIBLE () {199309;}' unless defined(&__POSIX_VISIBLE);
	    eval 'sub __ISO_C_VISIBLE () {1990;}' unless defined(&__ISO_C_VISIBLE);
	}
 elsif((defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : undef) >= 199209) {
	    eval 'sub __POSIX_VISIBLE () {199209;}' unless defined(&__POSIX_VISIBLE);
	    eval 'sub __ISO_C_VISIBLE () {1990;}' unless defined(&__ISO_C_VISIBLE);
	}
 elsif((defined(&_POSIX_C_SOURCE) ? &_POSIX_C_SOURCE : undef) >= 199009) {
	    eval 'sub __POSIX_VISIBLE () {199009;}' unless defined(&__POSIX_VISIBLE);
	    eval 'sub __ISO_C_VISIBLE () {1990;}' unless defined(&__ISO_C_VISIBLE);
	} else {
	    eval 'sub __POSIX_VISIBLE () {198808;}' unless defined(&__POSIX_VISIBLE);
	    eval 'sub __ISO_C_VISIBLE () {0;}' unless defined(&__ISO_C_VISIBLE);
	}
    } else {
	if(defined(&_ANSI_SOURCE) ) {
	    eval 'sub __POSIX_VISIBLE () {0;}' unless defined(&__POSIX_VISIBLE);
	    eval 'sub __XSI_VISIBLE () {0;}' unless defined(&__XSI_VISIBLE);
	    eval 'sub __BSD_VISIBLE () {0;}' unless defined(&__BSD_VISIBLE);
	    eval 'sub __ISO_C_VISIBLE () {1990;}' unless defined(&__ISO_C_VISIBLE);
	}
 elsif(defined(&_C99_SOURCE) ) {
	    eval 'sub __POSIX_VISIBLE () {0;}' unless defined(&__POSIX_VISIBLE);
	    eval 'sub __XSI_VISIBLE () {0;}' unless defined(&__XSI_VISIBLE);
	    eval 'sub __BSD_VISIBLE () {0;}' unless defined(&__BSD_VISIBLE);
	    eval 'sub __ISO_C_VISIBLE () {1999;}' unless defined(&__ISO_C_VISIBLE);
	}
 elsif(defined(&_C11_SOURCE) ) {
	    eval 'sub __POSIX_VISIBLE () {0;}' unless defined(&__POSIX_VISIBLE);
	    eval 'sub __XSI_VISIBLE () {0;}' unless defined(&__XSI_VISIBLE);
	    eval 'sub __BSD_VISIBLE () {0;}' unless defined(&__BSD_VISIBLE);
	    eval 'sub __ISO_C_VISIBLE () {2011;}' unless defined(&__ISO_C_VISIBLE);
	} else {
	    eval 'sub __POSIX_VISIBLE () {200809;}' unless defined(&__POSIX_VISIBLE);
	    eval 'sub __XSI_VISIBLE () {700;}' unless defined(&__XSI_VISIBLE);
	    eval 'sub __BSD_VISIBLE () {1;}' unless defined(&__BSD_VISIBLE);
	    eval 'sub __ISO_C_VISIBLE () {2011;}' unless defined(&__ISO_C_VISIBLE);
	}
    }
    if(defined(&__mips) || defined(&__powerpc64__)) {
	eval 'sub __NO_TLS () {1;}' unless defined(&__NO_TLS);
    }
}
1;
