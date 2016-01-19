require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_CHIO_H_)) {
    eval 'sub _SYS_CHIO_H_ () {1;}' unless defined(&_SYS_CHIO_H_);
    unless(defined(&_KERNEL)) {
	require 'sys/types.ph';
    }
    require 'sys/ioccom.ph';
    eval 'sub CHET_MT () {0;}' unless defined(&CHET_MT);
    eval 'sub CHET_ST () {1;}' unless defined(&CHET_ST);
    eval 'sub CHET_IE () {2;}' unless defined(&CHET_IE);
    eval 'sub CHET_DT () {3;}' unless defined(&CHET_DT);
    eval 'sub CHET_MAX () { &CHET_DT;}' unless defined(&CHET_MAX);
    eval 'sub CH_VOLTAG_MAXLEN () {32;}' unless defined(&CH_VOLTAG_MAXLEN);
    eval 'sub CM_INVERT () {0x1;}' unless defined(&CM_INVERT);
    eval 'sub CE_INVERT1 () {0x1;}' unless defined(&CE_INVERT1);
    eval 'sub CE_INVERT2 () {0x2;}' unless defined(&CE_INVERT2);
    eval 'sub CP_INVERT () {0x1;}' unless defined(&CP_INVERT);
    eval("sub CES_STATUS_FULL () { 0x001; }") unless defined(&CES_STATUS_FULL);
    eval("sub CES_STATUS_IMPEXP () { 0x002; }") unless defined(&CES_STATUS_IMPEXP);
    eval("sub CES_STATUS_EXCEPT () { 0x004; }") unless defined(&CES_STATUS_EXCEPT);
    eval("sub CES_PICKER_MASK () { 0x005; }") unless defined(&CES_PICKER_MASK);
    eval("sub CES_STATUS_ACCESS () { 0x008; }") unless defined(&CES_STATUS_ACCESS);
    eval("sub CES_SLOT_MASK () { 0x00c; }") unless defined(&CES_SLOT_MASK);
    eval("sub CES_DRIVE_MASK () { 0x00c; }") unless defined(&CES_DRIVE_MASK);
    eval("sub CES_STATUS_EXENAB () { 0x010; }") unless defined(&CES_STATUS_EXENAB);
    eval("sub CES_STATUS_INENAB () { 0x020; }") unless defined(&CES_STATUS_INENAB);
    eval("sub CES_PORTAL_MASK () { 0x03f; }") unless defined(&CES_PORTAL_MASK);
    eval("sub CES_INVERT () { 0x040; }") unless defined(&CES_INVERT);
    eval("sub CES_SOURCE_VALID () { 0x080; }") unless defined(&CES_SOURCE_VALID);
    eval("sub CES_SCSIID_VALID () { 0x100; }") unless defined(&CES_SCSIID_VALID);
    eval("sub CES_LUN_VALID () { 0x200; }") unless defined(&CES_LUN_VALID);
    eval("sub CES_PIV () { 0x400; }") unless defined(&CES_PIV);
    eval 'sub CES_MEDIUM_TYPE_UNKNOWN () {0;}' unless defined(&CES_MEDIUM_TYPE_UNKNOWN);
    eval 'sub CES_MEDIUM_TYPE_DATA () {1;}' unless defined(&CES_MEDIUM_TYPE_DATA);
    eval 'sub CES_MEDIUM_TYPE_CLEANING () {2;}' unless defined(&CES_MEDIUM_TYPE_CLEANING);
    eval 'sub CES_MEDIUM_TYPE_DIAGNOSTIC () {3;}' unless defined(&CES_MEDIUM_TYPE_DIAGNOSTIC);
    eval 'sub CES_MEDIUM_TYPE_WORM () {4;}' unless defined(&CES_MEDIUM_TYPE_WORM);
    eval 'sub CES_MEDIUM_TYPE_MICROCODE () {5;}' unless defined(&CES_MEDIUM_TYPE_MICROCODE);
    eval 'sub CES_PROTOCOL_ID_FCP_4 () {0;}' unless defined(&CES_PROTOCOL_ID_FCP_4);
    eval 'sub CES_PROTOCOL_ID_SPI_5 () {1;}' unless defined(&CES_PROTOCOL_ID_SPI_5);
    eval 'sub CES_PROTOCOL_ID_SSA_S3P () {2;}' unless defined(&CES_PROTOCOL_ID_SSA_S3P);
    eval 'sub CES_PROTOCOL_ID_SBP_3 () {3;}' unless defined(&CES_PROTOCOL_ID_SBP_3);
    eval 'sub CES_PROTOCOL_ID_SRP () {4;}' unless defined(&CES_PROTOCOL_ID_SRP);
    eval 'sub CES_PROTOCOL_ID_ISCSI () {5;}' unless defined(&CES_PROTOCOL_ID_ISCSI);
    eval 'sub CES_PROTOCOL_ID_SPL () {6;}' unless defined(&CES_PROTOCOL_ID_SPL);
    eval 'sub CES_PROTOCOL_ID_ADT_2 () {7;}' unless defined(&CES_PROTOCOL_ID_ADT_2);
    eval 'sub CES_PROTOCOL_ID_ACS_2 () {8;}' unless defined(&CES_PROTOCOL_ID_ACS_2);
    eval 'sub CES_ASSOC_LOGICAL_UNIT () {0;}' unless defined(&CES_ASSOC_LOGICAL_UNIT);
    eval 'sub CES_ASSOC_TARGET_PORT () {1;}' unless defined(&CES_ASSOC_TARGET_PORT);
    eval 'sub CES_ASSOC_TARGET_DEVICE () {2;}' unless defined(&CES_ASSOC_TARGET_DEVICE);
    eval 'sub CES_DESIGNATOR_TYPE_VENDOR_SPECIFIC () {0;}' unless defined(&CES_DESIGNATOR_TYPE_VENDOR_SPECIFIC);
    eval 'sub CES_DESIGNATOR_TYPE_T10_VENDOR_ID () {1;}' unless defined(&CES_DESIGNATOR_TYPE_T10_VENDOR_ID);
    eval 'sub CES_DESIGNATOR_TYPE_EUI_64 () {2;}' unless defined(&CES_DESIGNATOR_TYPE_EUI_64);
    eval 'sub CES_DESIGNATOR_TYPE_NAA () {3;}' unless defined(&CES_DESIGNATOR_TYPE_NAA);
    eval 'sub CES_DESIGNATOR_TYPE_TARGET_PORT_ID () {4;}' unless defined(&CES_DESIGNATOR_TYPE_TARGET_PORT_ID);
    eval 'sub CES_DESIGNATOR_TYPE_TARGET_PORT_GRP () {5;}' unless defined(&CES_DESIGNATOR_TYPE_TARGET_PORT_GRP);
    eval 'sub CES_DESIGNATOR_TYPE_LOGICAL_UNIT_GRP () {6;}' unless defined(&CES_DESIGNATOR_TYPE_LOGICAL_UNIT_GRP);
    eval 'sub CES_DESIGNATOR_TYPE_MD5_LOGICAL_UNIT_ID () {7;}' unless defined(&CES_DESIGNATOR_TYPE_MD5_LOGICAL_UNIT_ID);
    eval 'sub CES_DESIGNATOR_TYPE_SCSI_NAME_STRING () {8;}' unless defined(&CES_DESIGNATOR_TYPE_SCSI_NAME_STRING);
    eval 'sub CES_CODE_SET_RESERVED () {0;}' unless defined(&CES_CODE_SET_RESERVED);
    eval 'sub CES_CODE_SET_BINARY () {1;}' unless defined(&CES_CODE_SET_BINARY);
    eval 'sub CES_CODE_SET_ASCII () {2;}' unless defined(&CES_CODE_SET_ASCII);
    eval 'sub CES_CODE_SET_UTF_8 () {3;}' unless defined(&CES_CODE_SET_UTF_8);
    eval 'sub CES_MAX_DESIGNATOR_LENGTH () {(1<< 8);}' unless defined(&CES_MAX_DESIGNATOR_LENGTH);
    eval 'sub CESR_VOLTAGS () {0x1;}' unless defined(&CESR_VOLTAGS);
    eval 'sub CSVR_MODE_MASK () {0xf;}' unless defined(&CSVR_MODE_MASK);
    eval 'sub CSVR_MODE_SET () {0x;}' unless defined(&CSVR_MODE_SET);
    eval 'sub CSVR_MODE_REPLACE () {0x1;}' unless defined(&CSVR_MODE_REPLACE);
    eval 'sub CSVR_MODE_CLEAR () {0x2;}' unless defined(&CSVR_MODE_CLEAR);
    eval 'sub CSVR_ALTERNATE () {0x10;}' unless defined(&CSVR_ALTERNATE);
    eval 'sub CESTATUS_BITS () {"\\20\\6INEAB\\5EXENAB\\4ACCESS\\3EXCEPT\\2IMPEXP\\1FULL";}' unless defined(&CESTATUS_BITS);
    eval 'sub CHIOMOVE () { &_IOW(ord(\'c\'), 0x1, \'struct changer_move\');}' unless defined(&CHIOMOVE);
    eval 'sub CHIOEXCHANGE () { &_IOW(ord(\'c\'), 0x2, \'struct changer_exchange\');}' unless defined(&CHIOEXCHANGE);
    eval 'sub CHIOPOSITION () { &_IOW(ord(\'c\'), 0x3, \'struct changer_position\');}' unless defined(&CHIOPOSITION);
    eval 'sub CHIOGPICKER () { &_IOR(ord(\'c\'), 0x4, \'int\');}' unless defined(&CHIOGPICKER);
    eval 'sub CHIOSPICKER () { &_IOW(ord(\'c\'), 0x5, \'int\');}' unless defined(&CHIOSPICKER);
    eval 'sub CHIOGPARAMS () { &_IOR(ord(\'c\'), 0x6, \'struct changer_params\');}' unless defined(&CHIOGPARAMS);
    eval 'sub CHIOIELEM () { &_IOW(ord(\'c\'), 0x7,  &u_int32_t);}' unless defined(&CHIOIELEM);
    eval 'sub OCHIOGSTATUS () { &_IOW(ord(\'c\'), 0x8, \'struct changer_element_status_request\');}' unless defined(&OCHIOGSTATUS);
    eval 'sub CHIOSETVOLTAG () { &_IOW(ord(\'c\'), 0x9, \'struct changer_set_voltag_request\');}' unless defined(&CHIOSETVOLTAG);
    eval 'sub CHIOGSTATUS () { &_IOW(ord(\'c\'), 0xa, \'struct changer_element_status_request\');}' unless defined(&CHIOGSTATUS);
}
1;