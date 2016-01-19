require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__kx509_asn1_h__)) {
    eval 'sub __kx509_asn1_h__ () {1;}' unless defined(&__kx509_asn1_h__);
    require 'stddef.ph';
    require 'time.ph';
    unless(defined(&__asn1_common_definitions__)) {
	eval 'sub __asn1_common_definitions__ () {1;}' unless defined(&__asn1_common_definitions__);
	eval 'sub ASN1_MALLOC_ENCODE {
	    my($T, $B, $BL, $S, $L, $R) = @_;
    	    eval q( &do { ($BL) =  &length_$T(($S)); ($B) =  &malloc(($BL));  &if(($B) ==  &NULL) { ($R) =  &ENOMEM; }  &else { ($R) =  &encode_$T((($B)) + ($BL) - 1, ($BL), ($S), ($L));  &if(($R) != 0) {  &free(($B)); ($B) =  &NULL; } } }  &while (0));
	}' unless defined(&ASN1_MALLOC_ENCODE);
	if(defined(&_WIN32)) {
	    unless(defined(&ASN1_LIB)) {
		eval 'sub ASN1EXP () { &__declspec( &dllimport);}' unless defined(&ASN1EXP);
	    } else {
		eval 'sub ASN1EXP () {1;}' unless defined(&ASN1EXP);
	    }
	    eval 'sub ASN1CALL () { &__stdcall;}' unless defined(&ASN1CALL);
	} else {
	    eval 'sub ASN1EXP () {1;}' unless defined(&ASN1EXP);
	    eval 'sub ASN1CALL () {1;}' unless defined(&ASN1CALL);
	}
    }
    eval("sub KX509_STATUS_GOOD () { 0; }") unless defined(&KX509_STATUS_GOOD);
    eval("sub KX509_STATUS_CLIENT_BAD () { 1; }") unless defined(&KX509_STATUS_CLIENT_BAD);
    eval("sub KX509_STATUS_CLIENT_FIX () { 2; }") unless defined(&KX509_STATUS_CLIENT_FIX);
    eval("sub KX509_STATUS_CLIENT_TEMP () { 3; }") unless defined(&KX509_STATUS_CLIENT_TEMP);
    eval("sub KX509_STATUS_SERVER_BAD () { 4; }") unless defined(&KX509_STATUS_SERVER_BAD);
    eval("sub KX509_STATUS_SERVER_TEMP () { 5; }") unless defined(&KX509_STATUS_SERVER_TEMP);
    eval("sub KX509_STATUS_SERVER_KEY () { 7; }") unless defined(&KX509_STATUS_SERVER_KEY);
}
1;
