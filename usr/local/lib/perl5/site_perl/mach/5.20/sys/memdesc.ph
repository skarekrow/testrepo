require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_MEMDESC_H_)) {
    eval 'sub _SYS_MEMDESC_H_ () {1;}' unless defined(&_SYS_MEMDESC_H_);
    eval 'sub MEMDESC_VADDR () {1;}' unless defined(&MEMDESC_VADDR);
    eval 'sub MEMDESC_PADDR () {2;}' unless defined(&MEMDESC_PADDR);
    eval 'sub MEMDESC_VLIST () {3;}' unless defined(&MEMDESC_VLIST);
    eval 'sub MEMDESC_PLIST () {4;}' unless defined(&MEMDESC_PLIST);
    eval 'sub MEMDESC_BIO () {5;}' unless defined(&MEMDESC_BIO);
    eval 'sub MEMDESC_UIO () {6;}' unless defined(&MEMDESC_UIO);
    eval 'sub MEMDESC_MBUF () {7;}' unless defined(&MEMDESC_MBUF);
    eval 'sub MEMDESC_CCB () {8;}' unless defined(&MEMDESC_CCB);
    eval 'sub memdesc_vaddr {
        my($vaddr,$len) = @_;
	    eval q({ \'struct memdesc\'  &mem;  ($mem->{u}->{md_vaddr}) = $vaddr;  ($mem->{md_opaque}) = $len;  ($mem->{md_type}) =  &MEMDESC_VADDR; ( &mem); });
    }' unless defined(&memdesc_vaddr);
    eval 'sub memdesc_paddr {
        my($paddr,$len) = @_;
	    eval q({ \'struct memdesc\'  &mem;  ($mem->{u}->{md_paddr}) = $paddr;  ($mem->{md_opaque}) = $len;  ($mem->{md_type}) =  &MEMDESC_PADDR; ( &mem); });
    }' unless defined(&memdesc_paddr);
    eval 'sub memdesc_vlist {
        my($vlist,$sglist_cnt) = @_;
	    eval q({ \'struct memdesc\'  &mem;  ($mem->{u}->{md_list}) = $vlist;  ($mem->{md_opaque}) = $sglist_cnt;  ($mem->{md_type}) =  &MEMDESC_VLIST; ( &mem); });
    }' unless defined(&memdesc_vlist);
    eval 'sub memdesc_plist {
        my($plist,$sglist_cnt) = @_;
	    eval q({ \'struct memdesc\'  &mem;  ($mem->{u}->{md_list}) = $plist;  ($mem->{md_opaque}) = $sglist_cnt;  ($mem->{md_type}) =  &MEMDESC_PLIST; ( &mem); });
    }' unless defined(&memdesc_plist);
    eval 'sub memdesc_bio {
        my($bio) = @_;
	    eval q({ \'struct memdesc\'  &mem;  ($mem->{u}->{md_bio}) = $bio;  ($mem->{md_type}) =  &MEMDESC_BIO; ( &mem); });
    }' unless defined(&memdesc_bio);
    eval 'sub memdesc_uio {
        my($uio) = @_;
	    eval q({ \'struct memdesc\'  &mem;  ($mem->{u}->{md_uio}) = $uio;  ($mem->{md_type}) =  &MEMDESC_UIO; ( &mem); });
    }' unless defined(&memdesc_uio);
    eval 'sub memdesc_mbuf {
        my($mbuf) = @_;
	    eval q({ \'struct memdesc\'  &mem;  ($mem->{u}->{md_mbuf}) = $mbuf;  ($mem->{md_type}) =  &MEMDESC_MBUF; ( &mem); });
    }' unless defined(&memdesc_mbuf);
    eval 'sub memdesc_ccb {
        my($ccb) = @_;
	    eval q({ \'struct memdesc\'  &mem;  ($mem->{u}->{md_ccb}) = $ccb;  ($mem->{md_type}) =  &MEMDESC_CCB; ( &mem); });
    }' unless defined(&memdesc_ccb);
}
1;
