require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__LIBUSB_H__)) {
    eval 'sub __LIBUSB_H__ () {1;}' unless defined(&__LIBUSB_H__);
    unless(defined(&LIBUSB_GLOBAL_INCLUDE_FILE)) {
	require 'stdint.ph';
	require 'sys/time.ph';
	require 'sys/types.ph';
    }
    eval 'sub LIBUSB_CALL () {1;}' unless defined(&LIBUSB_CALL);
    if(defined(&__cplusplus)) {
    }
    if(0) {
    }
    eval("sub LIBUSB_CLASS_PER_INTERFACE () { 0; }") unless defined(&LIBUSB_CLASS_PER_INTERFACE);
    eval("sub LIBUSB_CLASS_AUDIO () { 1; }") unless defined(&LIBUSB_CLASS_AUDIO);
    eval("sub LIBUSB_CLASS_COMM () { 2; }") unless defined(&LIBUSB_CLASS_COMM);
    eval("sub LIBUSB_CLASS_HID () { 3; }") unless defined(&LIBUSB_CLASS_HID);
    eval("sub LIBUSB_CLASS_PTP () { 6; }") unless defined(&LIBUSB_CLASS_PTP);
    eval("sub LIBUSB_CLASS_IMAGE () { 6; }") unless defined(&LIBUSB_CLASS_IMAGE);
    eval("sub LIBUSB_CLASS_PRINTER () { 7; }") unless defined(&LIBUSB_CLASS_PRINTER);
    eval("sub LIBUSB_CLASS_MASS_STORAGE () { 8; }") unless defined(&LIBUSB_CLASS_MASS_STORAGE);
    eval("sub LIBUSB_CLASS_HUB () { 9; }") unless defined(&LIBUSB_CLASS_HUB);
    eval("sub LIBUSB_CLASS_DATA () { 10; }") unless defined(&LIBUSB_CLASS_DATA);
    eval("sub LIBUSB_CLASS_SMART_CARD () { 11; }") unless defined(&LIBUSB_CLASS_SMART_CARD);
    eval("sub LIBUSB_CLASS_CONTENT_SECURITY () { 13; }") unless defined(&LIBUSB_CLASS_CONTENT_SECURITY);
    eval("sub LIBUSB_CLASS_VIDEO () { 14; }") unless defined(&LIBUSB_CLASS_VIDEO);
    eval("sub LIBUSB_CLASS_PERSONAL_HEALTHCARE () { 15; }") unless defined(&LIBUSB_CLASS_PERSONAL_HEALTHCARE);
    eval("sub LIBUSB_CLASS_DIAGNOSTIC_DEVICE () { 0xdc; }") unless defined(&LIBUSB_CLASS_DIAGNOSTIC_DEVICE);
    eval("sub LIBUSB_CLASS_WIRELESS () { 0xe0; }") unless defined(&LIBUSB_CLASS_WIRELESS);
    eval("sub LIBUSB_CLASS_APPLICATION () { 0xfe; }") unless defined(&LIBUSB_CLASS_APPLICATION);
    eval("sub LIBUSB_CLASS_VENDOR_SPEC () { 0xff; }") unless defined(&LIBUSB_CLASS_VENDOR_SPEC);
    eval("sub LIBUSB_DT_DEVICE () { 0x01; }") unless defined(&LIBUSB_DT_DEVICE);
    eval("sub LIBUSB_DT_CONFIG () { 0x02; }") unless defined(&LIBUSB_DT_CONFIG);
    eval("sub LIBUSB_DT_STRING () { 0x03; }") unless defined(&LIBUSB_DT_STRING);
    eval("sub LIBUSB_DT_INTERFACE () { 0x04; }") unless defined(&LIBUSB_DT_INTERFACE);
    eval("sub LIBUSB_DT_ENDPOINT () { 0x05; }") unless defined(&LIBUSB_DT_ENDPOINT);
    eval("sub LIBUSB_DT_HID () { 0x21; }") unless defined(&LIBUSB_DT_HID);
    eval("sub LIBUSB_DT_REPORT () { 0x22; }") unless defined(&LIBUSB_DT_REPORT);
    eval("sub LIBUSB_DT_PHYSICAL () { 0x23; }") unless defined(&LIBUSB_DT_PHYSICAL);
    eval("sub LIBUSB_DT_HUB () { 0x29; }") unless defined(&LIBUSB_DT_HUB);
    eval("sub LIBUSB_DT_BOS () { 0x0f; }") unless defined(&LIBUSB_DT_BOS);
    eval("sub LIBUSB_DT_DEVICE_CAPABILITY () { 0x10; }") unless defined(&LIBUSB_DT_DEVICE_CAPABILITY);
    eval("sub LIBUSB_DT_SS_ENDPOINT_COMPANION () { 0x30; }") unless defined(&LIBUSB_DT_SS_ENDPOINT_COMPANION);
    eval("sub LIBUSB_WIRELESS_USB_DEVICE_CAPABILITY () { 0x1; }") unless defined(&LIBUSB_WIRELESS_USB_DEVICE_CAPABILITY);
    eval("sub LIBUSB_USB_2_0_EXTENSION_DEVICE_CAPABILITY () { 0x2; }") unless defined(&LIBUSB_USB_2_0_EXTENSION_DEVICE_CAPABILITY);
    eval("sub LIBUSB_SS_USB_DEVICE_CAPABILITY () { 0x3; }") unless defined(&LIBUSB_SS_USB_DEVICE_CAPABILITY);
    eval("sub LIBUSB_CONTAINER_ID_DEVICE_CAPABILITY () { 0x4; }") unless defined(&LIBUSB_CONTAINER_ID_DEVICE_CAPABILITY);
    eval 'sub LIBUSB_DT_DEVICE_SIZE () {18;}' unless defined(&LIBUSB_DT_DEVICE_SIZE);
    eval 'sub LIBUSB_DT_CONFIG_SIZE () {9;}' unless defined(&LIBUSB_DT_CONFIG_SIZE);
    eval 'sub LIBUSB_DT_INTERFACE_SIZE () {9;}' unless defined(&LIBUSB_DT_INTERFACE_SIZE);
    eval 'sub LIBUSB_DT_ENDPOINT_SIZE () {7;}' unless defined(&LIBUSB_DT_ENDPOINT_SIZE);
    eval 'sub LIBUSB_DT_ENDPOINT_AUDIO_SIZE () {9;}' unless defined(&LIBUSB_DT_ENDPOINT_AUDIO_SIZE);
    eval 'sub LIBUSB_DT_HUB_NONVAR_SIZE () {7;}' unless defined(&LIBUSB_DT_HUB_NONVAR_SIZE);
    eval 'sub LIBUSB_DT_SS_ENDPOINT_COMPANION_SIZE () {6;}' unless defined(&LIBUSB_DT_SS_ENDPOINT_COMPANION_SIZE);
    eval 'sub LIBUSB_DT_BOS_SIZE () {5;}' unless defined(&LIBUSB_DT_BOS_SIZE);
    eval 'sub LIBUSB_USB_2_0_EXTENSION_DEVICE_CAPABILITY_SIZE () {7;}' unless defined(&LIBUSB_USB_2_0_EXTENSION_DEVICE_CAPABILITY_SIZE);
    eval 'sub LIBUSB_SS_USB_DEVICE_CAPABILITY_SIZE () {10;}' unless defined(&LIBUSB_SS_USB_DEVICE_CAPABILITY_SIZE);
    eval 'sub LIBUSB_ENDPOINT_ADDRESS_MASK () {0xf;}' unless defined(&LIBUSB_ENDPOINT_ADDRESS_MASK);
    eval 'sub LIBUSB_ENDPOINT_DIR_MASK () {0x80;}' unless defined(&LIBUSB_ENDPOINT_DIR_MASK);
    eval("sub LIBUSB_ENDPOINT_IN () { 0x80; }") unless defined(&LIBUSB_ENDPOINT_IN);
    eval("sub LIBUSB_ENDPOINT_OUT () { 0x00; }") unless defined(&LIBUSB_ENDPOINT_OUT);
    eval 'sub LIBUSB_TRANSFER_TYPE_MASK () {0x3;}' unless defined(&LIBUSB_TRANSFER_TYPE_MASK);
    eval("sub LIBUSB_TRANSFER_TYPE_CONTROL () { 0; }") unless defined(&LIBUSB_TRANSFER_TYPE_CONTROL);
    eval("sub LIBUSB_TRANSFER_TYPE_ISOCHRONOUS () { 1; }") unless defined(&LIBUSB_TRANSFER_TYPE_ISOCHRONOUS);
    eval("sub LIBUSB_TRANSFER_TYPE_BULK () { 2; }") unless defined(&LIBUSB_TRANSFER_TYPE_BULK);
    eval("sub LIBUSB_TRANSFER_TYPE_INTERRUPT () { 3; }") unless defined(&LIBUSB_TRANSFER_TYPE_INTERRUPT);
    eval("sub LIBUSB_REQUEST_GET_STATUS () { 0x00; }") unless defined(&LIBUSB_REQUEST_GET_STATUS);
    eval("sub LIBUSB_REQUEST_CLEAR_FEATURE () { 0x01; }") unless defined(&LIBUSB_REQUEST_CLEAR_FEATURE);
    eval("sub LIBUSB_REQUEST_SET_FEATURE () { 0x03; }") unless defined(&LIBUSB_REQUEST_SET_FEATURE);
    eval("sub LIBUSB_REQUEST_SET_ADDRESS () { 0x05; }") unless defined(&LIBUSB_REQUEST_SET_ADDRESS);
    eval("sub LIBUSB_REQUEST_GET_DESCRIPTOR () { 0x06; }") unless defined(&LIBUSB_REQUEST_GET_DESCRIPTOR);
    eval("sub LIBUSB_REQUEST_SET_DESCRIPTOR () { 0x07; }") unless defined(&LIBUSB_REQUEST_SET_DESCRIPTOR);
    eval("sub LIBUSB_REQUEST_GET_CONFIGURATION () { 0x08; }") unless defined(&LIBUSB_REQUEST_GET_CONFIGURATION);
    eval("sub LIBUSB_REQUEST_SET_CONFIGURATION () { 0x09; }") unless defined(&LIBUSB_REQUEST_SET_CONFIGURATION);
    eval("sub LIBUSB_REQUEST_GET_INTERFACE () { 0x0A; }") unless defined(&LIBUSB_REQUEST_GET_INTERFACE);
    eval("sub LIBUSB_REQUEST_SET_INTERFACE () { 0x0B; }") unless defined(&LIBUSB_REQUEST_SET_INTERFACE);
    eval("sub LIBUSB_REQUEST_SYNCH_FRAME () { 0x0C; }") unless defined(&LIBUSB_REQUEST_SYNCH_FRAME);
    eval("sub LIBUSB_REQUEST_TYPE_STANDARD () { (0x00<<5); }") unless defined(&LIBUSB_REQUEST_TYPE_STANDARD);
    eval("sub LIBUSB_REQUEST_TYPE_CLASS () { (0x01<<5); }") unless defined(&LIBUSB_REQUEST_TYPE_CLASS);
    eval("sub LIBUSB_REQUEST_TYPE_VENDOR () { (0x02<<5); }") unless defined(&LIBUSB_REQUEST_TYPE_VENDOR);
    eval("sub LIBUSB_REQUEST_TYPE_RESERVED () { (0x03<<5); }") unless defined(&LIBUSB_REQUEST_TYPE_RESERVED);
    eval("sub LIBUSB_RECIPIENT_DEVICE () { 0x00; }") unless defined(&LIBUSB_RECIPIENT_DEVICE);
    eval("sub LIBUSB_RECIPIENT_INTERFACE () { 0x01; }") unless defined(&LIBUSB_RECIPIENT_INTERFACE);
    eval("sub LIBUSB_RECIPIENT_ENDPOINT () { 0x02; }") unless defined(&LIBUSB_RECIPIENT_ENDPOINT);
    eval("sub LIBUSB_RECIPIENT_OTHER () { 0x03; }") unless defined(&LIBUSB_RECIPIENT_OTHER);
    eval 'sub LIBUSB_ISO_SYNC_TYPE_MASK () {0xc;}' unless defined(&LIBUSB_ISO_SYNC_TYPE_MASK);
    eval("sub LIBUSB_ISO_SYNC_TYPE_NONE () { 0; }") unless defined(&LIBUSB_ISO_SYNC_TYPE_NONE);
    eval("sub LIBUSB_ISO_SYNC_TYPE_ASYNC () { 1; }") unless defined(&LIBUSB_ISO_SYNC_TYPE_ASYNC);
    eval("sub LIBUSB_ISO_SYNC_TYPE_ADAPTIVE () { 2; }") unless defined(&LIBUSB_ISO_SYNC_TYPE_ADAPTIVE);
    eval("sub LIBUSB_ISO_SYNC_TYPE_SYNC () { 3; }") unless defined(&LIBUSB_ISO_SYNC_TYPE_SYNC);
    eval 'sub LIBUSB_ISO_USAGE_TYPE_MASK () {0x30;}' unless defined(&LIBUSB_ISO_USAGE_TYPE_MASK);
    eval("sub LIBUSB_ISO_USAGE_TYPE_DATA () { 0; }") unless defined(&LIBUSB_ISO_USAGE_TYPE_DATA);
    eval("sub LIBUSB_ISO_USAGE_TYPE_FEEDBACK () { 1; }") unless defined(&LIBUSB_ISO_USAGE_TYPE_FEEDBACK);
    eval("sub LIBUSB_ISO_USAGE_TYPE_IMPLICIT () { 2; }") unless defined(&LIBUSB_ISO_USAGE_TYPE_IMPLICIT);
    eval("sub LIBUSB_SUCCESS () { 0; }") unless defined(&LIBUSB_SUCCESS);
    eval("sub LIBUSB_ERROR_IO () { -1; }") unless defined(&LIBUSB_ERROR_IO);
    eval("sub LIBUSB_ERROR_INVALID_PARAM () { -2; }") unless defined(&LIBUSB_ERROR_INVALID_PARAM);
    eval("sub LIBUSB_ERROR_ACCESS () { -3; }") unless defined(&LIBUSB_ERROR_ACCESS);
    eval("sub LIBUSB_ERROR_NO_DEVICE () { -4; }") unless defined(&LIBUSB_ERROR_NO_DEVICE);
    eval("sub LIBUSB_ERROR_NOT_FOUND () { -5; }") unless defined(&LIBUSB_ERROR_NOT_FOUND);
    eval("sub LIBUSB_ERROR_BUSY () { -6; }") unless defined(&LIBUSB_ERROR_BUSY);
    eval("sub LIBUSB_ERROR_TIMEOUT () { -7; }") unless defined(&LIBUSB_ERROR_TIMEOUT);
    eval("sub LIBUSB_ERROR_OVERFLOW () { -8; }") unless defined(&LIBUSB_ERROR_OVERFLOW);
    eval("sub LIBUSB_ERROR_PIPE () { -9; }") unless defined(&LIBUSB_ERROR_PIPE);
    eval("sub LIBUSB_ERROR_INTERRUPTED () { -10; }") unless defined(&LIBUSB_ERROR_INTERRUPTED);
    eval("sub LIBUSB_ERROR_NO_MEM () { -11; }") unless defined(&LIBUSB_ERROR_NO_MEM);
    eval("sub LIBUSB_ERROR_NOT_SUPPORTED () { -12; }") unless defined(&LIBUSB_ERROR_NOT_SUPPORTED);
    eval("sub LIBUSB_ERROR_OTHER () { -99; }") unless defined(&LIBUSB_ERROR_OTHER);
    eval("sub LIBUSB_SPEED_UNKNOWN () { 0; }") unless defined(&LIBUSB_SPEED_UNKNOWN);
    eval("sub LIBUSB_SPEED_LOW () { 1; }") unless defined(&LIBUSB_SPEED_LOW);
    eval("sub LIBUSB_SPEED_FULL () { 2; }") unless defined(&LIBUSB_SPEED_FULL);
    eval("sub LIBUSB_SPEED_HIGH () { 3; }") unless defined(&LIBUSB_SPEED_HIGH);
    eval("sub LIBUSB_SPEED_SUPER () { 4; }") unless defined(&LIBUSB_SPEED_SUPER);
    eval("sub LIBUSB_TRANSFER_COMPLETED () { 0; }") unless defined(&LIBUSB_TRANSFER_COMPLETED);
    eval("sub LIBUSB_TRANSFER_ERROR () { 1; }") unless defined(&LIBUSB_TRANSFER_ERROR);
    eval("sub LIBUSB_TRANSFER_TIMED_OUT () { 2; }") unless defined(&LIBUSB_TRANSFER_TIMED_OUT);
    eval("sub LIBUSB_TRANSFER_CANCELLED () { 3; }") unless defined(&LIBUSB_TRANSFER_CANCELLED);
    eval("sub LIBUSB_TRANSFER_STALL () { 4; }") unless defined(&LIBUSB_TRANSFER_STALL);
    eval("sub LIBUSB_TRANSFER_NO_DEVICE () { 5; }") unless defined(&LIBUSB_TRANSFER_NO_DEVICE);
    eval("sub LIBUSB_TRANSFER_OVERFLOW () { 6; }") unless defined(&LIBUSB_TRANSFER_OVERFLOW);
    eval("sub LIBUSB_TRANSFER_SHORT_NOT_OK () { 1<<0; }") unless defined(&LIBUSB_TRANSFER_SHORT_NOT_OK);
    eval("sub LIBUSB_TRANSFER_FREE_BUFFER () { 1<<1; }") unless defined(&LIBUSB_TRANSFER_FREE_BUFFER);
    eval("sub LIBUSB_TRANSFER_FREE_TRANSFER () { 1<<2; }") unless defined(&LIBUSB_TRANSFER_FREE_TRANSFER);
    eval("sub LIBUSB_LOG_LEVEL_NONE () { 0; }") unless defined(&LIBUSB_LOG_LEVEL_NONE);
    eval("sub LIBUSB_LOG_LEVEL_ERROR () { 1; }") unless defined(&LIBUSB_LOG_LEVEL_ERROR);
    eval("sub LIBUSB_LOG_LEVEL_WARNING () { 2; }") unless defined(&LIBUSB_LOG_LEVEL_WARNING);
    eval("sub LIBUSB_LOG_LEVEL_INFO () { 3; }") unless defined(&LIBUSB_LOG_LEVEL_INFO);
    eval("sub LIBUSB_LOG_LEVEL_DEBUG () { 4; }") unless defined(&LIBUSB_LOG_LEVEL_DEBUG);
    eval("sub LIBUSB_DEBUG_NO () { 0; }") unless defined(&LIBUSB_DEBUG_NO);
    eval("sub LIBUSB_DEBUG_FUNCTION () { 1; }") unless defined(&LIBUSB_DEBUG_FUNCTION);
    eval("sub LIBUSB_DEBUG_TRANSFER () { 2; }") unless defined(&LIBUSB_DEBUG_TRANSFER);
    eval 'sub LIBUSB_USB_2_0_CAPABILITY_LPM_SUPPORT () {(1<< 1);}' unless defined(&LIBUSB_USB_2_0_CAPABILITY_LPM_SUPPORT);
    eval 'sub LIBUSB_SS_USB_CAPABILITY_LPM_SUPPORT () {(1<< 1);}' unless defined(&LIBUSB_SS_USB_CAPABILITY_LPM_SUPPORT);
    eval 'sub LIBUSB_CAPABILITY_LOW_SPEED_OPERATION () {(1);}' unless defined(&LIBUSB_CAPABILITY_LOW_SPEED_OPERATION);
    eval 'sub LIBUSB_CAPABILITY_FULL_SPEED_OPERATION () {(1<< 1);}' unless defined(&LIBUSB_CAPABILITY_FULL_SPEED_OPERATION);
    eval 'sub LIBUSB_CAPABILITY_HIGH_SPEED_OPERATION () {(1<< 2);}' unless defined(&LIBUSB_CAPABILITY_HIGH_SPEED_OPERATION);
    eval 'sub LIBUSB_CAPABILITY_5GBPS_OPERATION () {(1<< 3);}' unless defined(&LIBUSB_CAPABILITY_5GBPS_OPERATION);
    eval 'sub LIBUSB_CONTROL_SETUP_SIZE () {8;}' unless defined(&LIBUSB_CONTROL_SETUP_SIZE);
    if(0) {
    }
    if(defined(&__cplusplus)) {
    }
}
1;
