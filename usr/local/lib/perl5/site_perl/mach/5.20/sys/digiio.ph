require '_h2ph_pre.ph';

no warnings qw(redefine misc);

eval("sub PCXE () { 0; }") unless defined(&PCXE);
eval("sub PCXEVE () { 1; }") unless defined(&PCXEVE);
eval("sub PCXI () { 2; }") unless defined(&PCXI);
eval("sub PCXEM () { 3; }") unless defined(&PCXEM);
eval("sub PCCX () { 4; }") unless defined(&PCCX);
eval("sub PCIEPCX () { 5; }") unless defined(&PCIEPCX);
eval("sub PCIXR () { 6; }") unless defined(&PCIXR);
eval("sub DIGIDB_INIT () { (1<<0); }") unless defined(&DIGIDB_INIT);
eval("sub DIGIDB_OPEN () { (1<<1); }") unless defined(&DIGIDB_OPEN);
eval("sub DIGIDB_CLOSE () { (1<<2); }") unless defined(&DIGIDB_CLOSE);
eval("sub DIGIDB_SET () { (1<<3); }") unless defined(&DIGIDB_SET);
eval("sub DIGIDB_INT () { (1<<4); }") unless defined(&DIGIDB_INT);
eval("sub DIGIDB_READ () { (1<<5); }") unless defined(&DIGIDB_READ);
eval("sub DIGIDB_WRITE () { (1<<6); }") unless defined(&DIGIDB_WRITE);
eval("sub DIGIDB_RX () { (1<<7); }") unless defined(&DIGIDB_RX);
eval("sub DIGIDB_TX () { (1<<8); }") unless defined(&DIGIDB_TX);
eval("sub DIGIDB_IRQ () { (1<<9); }") unless defined(&DIGIDB_IRQ);
eval("sub DIGIDB_MODEM () { (1<<10); }") unless defined(&DIGIDB_MODEM);
eval("sub DIGIDB_RI () { (1<<11); }") unless defined(&DIGIDB_RI);
eval 'sub DIGIIO_REINIT () { &_IO(ord(\'e\', \'A\'));}' unless defined(&DIGIIO_REINIT);
eval 'sub DIGIIO_DEBUG () { &_IOW(ord(\'e\', \'B\'), \'int\');}' unless defined(&DIGIIO_DEBUG);
eval 'sub DIGIIO_RING () { &_IOWINT(ord(\'e\', \'C\'));}' unless defined(&DIGIIO_RING);
eval 'sub DIGIIO_MODEL () { &_IOR(ord(\'e\', \'D\'),  &enum  &digi_model);}' unless defined(&DIGIIO_MODEL);
eval 'sub DIGIIO_IDENT () { &_IOW(ord(\'e\', \'E\'), \'char\' *);}' unless defined(&DIGIIO_IDENT);
eval 'sub DIGIIO_SETALTPIN () { &_IOW(ord(\'e\', \'F\'), \'int\');}' unless defined(&DIGIIO_SETALTPIN);
eval 'sub DIGIIO_GETALTPIN () { &_IOR(ord(\'e\', \'G\'), \'int\');}' unless defined(&DIGIIO_GETALTPIN);
1;
