require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_ASSYM_H_)) {
    eval 'sub _SYS_ASSYM_H_ () {1;}' unless defined(&_SYS_ASSYM_H_);
    eval 'sub ASSYM_BIAS () {0x10000;}' unless defined(&ASSYM_BIAS);
    eval 'sub ASSYM_ABS {
        my($value) = @_;
	    eval q((($value) < 0? -(($value) + 1) + 1 : ($value)));
    }' unless defined(&ASSYM_ABS);
    eval 'sub ASSYM {
        my($name, $value) = @_;
	    eval q(\'char\' $name   $sign[(($value) < 0? 1: 0) +  &ASSYM_BIAS]; \'char\' $name   $w0[( &ASSYM_ABS($value) & 0xffff) +  &ASSYM_BIAS]; \'char\' $name   $w1[(( &ASSYM_ABS($value) & 0xffff0000) >> 16) +  &ASSYM_BIAS]; \'char\' $name   $w2[(( &ASSYM_ABS($value) & 0xffff00000000) >> 32) +  &ASSYM_BIAS]; \'char\' $name   $w3[(( &ASSYM_ABS($value) & 0xffff000000000000) >> 48) +  &ASSYM_BIAS]);
    }' unless defined(&ASSYM);
}
1;
