require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__SYS_IPMI_H__)) {
    eval 'sub __SYS_IPMI_H__ () {1;}' unless defined(&__SYS_IPMI_H__);
    eval 'sub IPMI_MAX_ADDR_SIZE () {0x20;}' unless defined(&IPMI_MAX_ADDR_SIZE);
    eval 'sub IPMI_MAX_RX () {1024;}' unless defined(&IPMI_MAX_RX);
    eval 'sub IPMI_BMC_SLAVE_ADDR () {0x20;}' unless defined(&IPMI_BMC_SLAVE_ADDR);
    eval 'sub IPMI_BMC_CHANNEL () {0xf;}' unless defined(&IPMI_BMC_CHANNEL);
    eval 'sub IPMI_BMC_SMS_LUN () {0x2;}' unless defined(&IPMI_BMC_SMS_LUN);
    eval 'sub IPMI_SYSTEM_INTERFACE_ADDR_TYPE () {0xc;}' unless defined(&IPMI_SYSTEM_INTERFACE_ADDR_TYPE);
    eval 'sub IPMI_IPMB_ADDR_TYPE () {0x1;}' unless defined(&IPMI_IPMB_ADDR_TYPE);
    eval 'sub IPMI_IPMB_BROADCAST_ADDR_TYPE () {0x41;}' unless defined(&IPMI_IPMB_BROADCAST_ADDR_TYPE);
    eval 'sub IPMI_IOC_MAGIC () {ord(\'i\');}' unless defined(&IPMI_IOC_MAGIC);
    eval 'sub IPMICTL_RECEIVE_MSG_TRUNC () { &_IOWR( &IPMI_IOC_MAGIC, 11, \'struct ipmi_recv\');}' unless defined(&IPMICTL_RECEIVE_MSG_TRUNC);
    eval 'sub IPMICTL_RECEIVE_MSG () { &_IOWR( &IPMI_IOC_MAGIC, 12, \'struct ipmi_recv\');}' unless defined(&IPMICTL_RECEIVE_MSG);
    eval 'sub IPMICTL_SEND_COMMAND () { &_IOW( &IPMI_IOC_MAGIC, 13, \'struct ipmi_req\');}' unless defined(&IPMICTL_SEND_COMMAND);
    eval 'sub IPMICTL_REGISTER_FOR_CMD () { &_IOW( &IPMI_IOC_MAGIC, 14, \'struct ipmi_cmdspec\');}' unless defined(&IPMICTL_REGISTER_FOR_CMD);
    eval 'sub IPMICTL_UNREGISTER_FOR_CMD () { &_IOW( &IPMI_IOC_MAGIC, 15, \'struct ipmi_cmdspec\');}' unless defined(&IPMICTL_UNREGISTER_FOR_CMD);
    eval 'sub IPMICTL_SET_GETS_EVENTS_CMD () { &_IOW( &IPMI_IOC_MAGIC, 16, \'int\');}' unless defined(&IPMICTL_SET_GETS_EVENTS_CMD);
    eval 'sub IPMICTL_SET_MY_ADDRESS_CMD () { &_IOW( &IPMI_IOC_MAGIC, 17, \'unsigned int\');}' unless defined(&IPMICTL_SET_MY_ADDRESS_CMD);
    eval 'sub IPMICTL_GET_MY_ADDRESS_CMD () { &_IOR( &IPMI_IOC_MAGIC, 18, \'unsigned int\');}' unless defined(&IPMICTL_GET_MY_ADDRESS_CMD);
    eval 'sub IPMICTL_SET_MY_LUN_CMD () { &_IOW( &IPMI_IOC_MAGIC, 19, \'unsigned int\');}' unless defined(&IPMICTL_SET_MY_LUN_CMD);
    eval 'sub IPMICTL_GET_MY_LUN_CMD () { &_IOR( &IPMI_IOC_MAGIC, 20, \'unsigned int\');}' unless defined(&IPMICTL_GET_MY_LUN_CMD);
    eval 'sub IPMI_RESPONSE_RECV_TYPE () {1;}' unless defined(&IPMI_RESPONSE_RECV_TYPE);
    eval 'sub IPMI_ASYNC_EVENT_RECV_TYPE () {2;}' unless defined(&IPMI_ASYNC_EVENT_RECV_TYPE);
    eval 'sub IPMI_CMD_RECV_TYPE () {3;}' unless defined(&IPMI_CMD_RECV_TYPE);
    eval 'sub IPMI_APP_REQUEST () {0x6;}' unless defined(&IPMI_APP_REQUEST);
    eval 'sub IPMI_GET_DEVICE_ID () {0x1;}' unless defined(&IPMI_GET_DEVICE_ID);
    eval 'sub IPMI_CLEAR_FLAGS () {0x30;}' unless defined(&IPMI_CLEAR_FLAGS);
    eval 'sub IPMI_GET_MSG_FLAGS () {0x31;}' unless defined(&IPMI_GET_MSG_FLAGS);
    eval 'sub IPMI_MSG_AVAILABLE () {0x1;}' unless defined(&IPMI_MSG_AVAILABLE);
    eval 'sub IPMI_MSG_BUFFER_FULL () {0x2;}' unless defined(&IPMI_MSG_BUFFER_FULL);
    eval 'sub IPMI_WDT_PRE_TIMEOUT () {0x8;}' unless defined(&IPMI_WDT_PRE_TIMEOUT);
    eval 'sub IPMI_GET_MSG () {0x33;}' unless defined(&IPMI_GET_MSG);
    eval 'sub IPMI_SEND_MSG () {0x34;}' unless defined(&IPMI_SEND_MSG);
    eval 'sub IPMI_GET_CHANNEL_INFO () {0x42;}' unless defined(&IPMI_GET_CHANNEL_INFO);
    eval 'sub IPMI_RESET_WDOG () {0x22;}' unless defined(&IPMI_RESET_WDOG);
    eval 'sub IPMI_SET_WDOG () {0x24;}' unless defined(&IPMI_SET_WDOG);
    eval 'sub IPMI_GET_WDOG () {0x25;}' unless defined(&IPMI_GET_WDOG);
    eval 'sub IPMI_SET_WD_TIMER_SMS_OS () {0x4;}' unless defined(&IPMI_SET_WD_TIMER_SMS_OS);
    eval 'sub IPMI_SET_WD_TIMER_DONT_STOP () {0x40;}' unless defined(&IPMI_SET_WD_TIMER_DONT_STOP);
    eval 'sub IPMI_SET_WD_ACTION_RESET () {0x1;}' unless defined(&IPMI_SET_WD_ACTION_RESET);
    if(defined(&__amd64__)) {
	eval 'sub IPMICTL_RECEIVE_MSG_TRUNC_32 () { &_IOWR( &IPMI_IOC_MAGIC, 11, \'struct ipmi_recv32\');}' unless defined(&IPMICTL_RECEIVE_MSG_TRUNC_32);
	eval 'sub IPMICTL_RECEIVE_MSG_32 () { &_IOWR( &IPMI_IOC_MAGIC, 12, \'struct ipmi_recv32\');}' unless defined(&IPMICTL_RECEIVE_MSG_32);
	eval 'sub IPMICTL_SEND_COMMAND_32 () { &_IOW( &IPMI_IOC_MAGIC, 13, \'struct ipmi_req32\');}' unless defined(&IPMICTL_SEND_COMMAND_32);
    }
}
1;
