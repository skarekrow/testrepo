require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__bool_true_false_are_defined)) {
    eval 'sub __bool_true_false_are_defined () {1;}' unless defined(&__bool_true_false_are_defined);
    unless(defined(&__cplusplus)) {
	eval 'sub false () {0;}' unless defined(&false);
	eval 'sub true () {1;}' unless defined(&true);
	eval 'sub bool () { &_Bool;}' unless defined(&bool);
	if((defined(&__STDC_VERSION__) ? &__STDC_VERSION__ : undef) < 199901  && (defined(&__GNUC__) ? &__GNUC__ : undef) < 3 && !defined(&__INTEL_COMPILER)) {
	}
    }
}
1;
