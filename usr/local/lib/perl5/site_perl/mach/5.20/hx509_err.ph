require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__hx509_err_h__)) {
    eval 'sub __hx509_err_h__ () {1;}' unless defined(&__hx509_err_h__);
    eval 'sub init_hx_err_tbl () { &initialize_hx_error_table;}' unless defined(&init_hx_err_tbl);
    eval("sub HX509_BAD_TIMEFORMAT () { 569856; }") unless defined(&HX509_BAD_TIMEFORMAT);
    eval("sub HX509_EXTENSION_NOT_FOUND () { 569857; }") unless defined(&HX509_EXTENSION_NOT_FOUND);
    eval("sub HX509_NO_PATH () { 569858; }") unless defined(&HX509_NO_PATH);
    eval("sub HX509_PARENT_NOT_CA () { 569859; }") unless defined(&HX509_PARENT_NOT_CA);
    eval("sub HX509_CA_PATH_TOO_DEEP () { 569860; }") unless defined(&HX509_CA_PATH_TOO_DEEP);
    eval("sub HX509_SIG_ALG_NO_SUPPORTED () { 569861; }") unless defined(&HX509_SIG_ALG_NO_SUPPORTED);
    eval("sub HX509_SIG_ALG_DONT_MATCH_KEY_ALG () { 569862; }") unless defined(&HX509_SIG_ALG_DONT_MATCH_KEY_ALG);
    eval("sub HX509_CERT_USED_BEFORE_TIME () { 569863; }") unless defined(&HX509_CERT_USED_BEFORE_TIME);
    eval("sub HX509_CERT_USED_AFTER_TIME () { 569864; }") unless defined(&HX509_CERT_USED_AFTER_TIME);
    eval("sub HX509_PRIVATE_KEY_MISSING () { 569865; }") unless defined(&HX509_PRIVATE_KEY_MISSING);
    eval("sub HX509_ALG_NOT_SUPP () { 569866; }") unless defined(&HX509_ALG_NOT_SUPP);
    eval("sub HX509_ISSUER_NOT_FOUND () { 569867; }") unless defined(&HX509_ISSUER_NOT_FOUND);
    eval("sub HX509_VERIFY_CONSTRAINTS () { 569868; }") unless defined(&HX509_VERIFY_CONSTRAINTS);
    eval("sub HX509_RANGE () { 569869; }") unless defined(&HX509_RANGE);
    eval("sub HX509_NAME_CONSTRAINT_ERROR () { 569870; }") unless defined(&HX509_NAME_CONSTRAINT_ERROR);
    eval("sub HX509_PATH_TOO_LONG () { 569871; }") unless defined(&HX509_PATH_TOO_LONG);
    eval("sub HX509_KU_CERT_MISSING () { 569872; }") unless defined(&HX509_KU_CERT_MISSING);
    eval("sub HX509_CERT_NOT_FOUND () { 569873; }") unless defined(&HX509_CERT_NOT_FOUND);
    eval("sub HX509_UNKNOWN_LOCK_COMMAND () { 569874; }") unless defined(&HX509_UNKNOWN_LOCK_COMMAND);
    eval("sub HX509_PARENT_IS_CA () { 569875; }") unless defined(&HX509_PARENT_IS_CA);
    eval("sub HX509_EXTRA_DATA_AFTER_STRUCTURE () { 569876; }") unless defined(&HX509_EXTRA_DATA_AFTER_STRUCTURE);
    eval("sub HX509_PROXY_CERT_INVALID () { 569877; }") unless defined(&HX509_PROXY_CERT_INVALID);
    eval("sub HX509_PROXY_CERT_NAME_WRONG () { 569878; }") unless defined(&HX509_PROXY_CERT_NAME_WRONG);
    eval("sub HX509_NAME_MALFORMED () { 569879; }") unless defined(&HX509_NAME_MALFORMED);
    eval("sub HX509_CERTIFICATE_MALFORMED () { 569880; }") unless defined(&HX509_CERTIFICATE_MALFORMED);
    eval("sub HX509_CERTIFICATE_MISSING_EKU () { 569881; }") unless defined(&HX509_CERTIFICATE_MISSING_EKU);
    eval("sub HX509_PROXY_CERTIFICATE_NOT_CANONICALIZED () { 569882; }") unless defined(&HX509_PROXY_CERTIFICATE_NOT_CANONICALIZED);
    eval("sub HX509_CMS_FAILED_CREATE_SIGATURE () { 569888; }") unless defined(&HX509_CMS_FAILED_CREATE_SIGATURE);
    eval("sub HX509_CMS_MISSING_SIGNER_DATA () { 569889; }") unless defined(&HX509_CMS_MISSING_SIGNER_DATA);
    eval("sub HX509_CMS_SIGNER_NOT_FOUND () { 569890; }") unless defined(&HX509_CMS_SIGNER_NOT_FOUND);
    eval("sub HX509_CMS_NO_DATA_AVAILABLE () { 569891; }") unless defined(&HX509_CMS_NO_DATA_AVAILABLE);
    eval("sub HX509_CMS_INVALID_DATA () { 569892; }") unless defined(&HX509_CMS_INVALID_DATA);
    eval("sub HX509_CMS_PADDING_ERROR () { 569893; }") unless defined(&HX509_CMS_PADDING_ERROR);
    eval("sub HX509_CMS_NO_RECIPIENT_CERTIFICATE () { 569894; }") unless defined(&HX509_CMS_NO_RECIPIENT_CERTIFICATE);
    eval("sub HX509_CMS_DATA_OID_MISMATCH () { 569895; }") unless defined(&HX509_CMS_DATA_OID_MISMATCH);
    eval("sub HX509_CRYPTO_INTERNAL_ERROR () { 569920; }") unless defined(&HX509_CRYPTO_INTERNAL_ERROR);
    eval("sub HX509_CRYPTO_EXTERNAL_ERROR () { 569921; }") unless defined(&HX509_CRYPTO_EXTERNAL_ERROR);
    eval("sub HX509_CRYPTO_SIGNATURE_MISSING () { 569922; }") unless defined(&HX509_CRYPTO_SIGNATURE_MISSING);
    eval("sub HX509_CRYPTO_BAD_SIGNATURE () { 569923; }") unless defined(&HX509_CRYPTO_BAD_SIGNATURE);
    eval("sub HX509_CRYPTO_SIG_NO_CONF () { 569924; }") unless defined(&HX509_CRYPTO_SIG_NO_CONF);
    eval("sub HX509_CRYPTO_SIG_INVALID_FORMAT () { 569925; }") unless defined(&HX509_CRYPTO_SIG_INVALID_FORMAT);
    eval("sub HX509_CRYPTO_OID_MISMATCH () { 569926; }") unless defined(&HX509_CRYPTO_OID_MISMATCH);
    eval("sub HX509_CRYPTO_NO_PROMPTER () { 569927; }") unless defined(&HX509_CRYPTO_NO_PROMPTER);
    eval("sub HX509_CRYPTO_SIGNATURE_WITHOUT_SIGNER () { 569928; }") unless defined(&HX509_CRYPTO_SIGNATURE_WITHOUT_SIGNER);
    eval("sub HX509_CRYPTO_RSA_PUBLIC_ENCRYPT () { 569929; }") unless defined(&HX509_CRYPTO_RSA_PUBLIC_ENCRYPT);
    eval("sub HX509_CRYPTO_RSA_PRIVATE_ENCRYPT () { 569930; }") unless defined(&HX509_CRYPTO_RSA_PRIVATE_ENCRYPT);
    eval("sub HX509_CRYPTO_RSA_PUBLIC_DECRYPT () { 569931; }") unless defined(&HX509_CRYPTO_RSA_PUBLIC_DECRYPT);
    eval("sub HX509_CRYPTO_RSA_PRIVATE_DECRYPT () { 569932; }") unless defined(&HX509_CRYPTO_RSA_PRIVATE_DECRYPT);
    eval("sub HX509_CRYPTO_ALGORITHM_BEST_BEFORE () { 569933; }") unless defined(&HX509_CRYPTO_ALGORITHM_BEST_BEFORE);
    eval("sub HX509_CRYPTO_KEY_FORMAT_UNSUPPORTED () { 569934; }") unless defined(&HX509_CRYPTO_KEY_FORMAT_UNSUPPORTED);
    eval("sub HX509_CRL_USED_BEFORE_TIME () { 569952; }") unless defined(&HX509_CRL_USED_BEFORE_TIME);
    eval("sub HX509_CRL_USED_AFTER_TIME () { 569953; }") unless defined(&HX509_CRL_USED_AFTER_TIME);
    eval("sub HX509_CRL_INVALID_FORMAT () { 569954; }") unless defined(&HX509_CRL_INVALID_FORMAT);
    eval("sub HX509_CERT_REVOKED () { 569955; }") unless defined(&HX509_CERT_REVOKED);
    eval("sub HX509_REVOKE_STATUS_MISSING () { 569956; }") unless defined(&HX509_REVOKE_STATUS_MISSING);
    eval("sub HX509_CRL_UNKNOWN_EXTENSION () { 569957; }") unless defined(&HX509_CRL_UNKNOWN_EXTENSION);
    eval("sub HX509_REVOKE_WRONG_DATA () { 569958; }") unless defined(&HX509_REVOKE_WRONG_DATA);
    eval("sub HX509_REVOKE_NOT_SAME_PARENT () { 569959; }") unless defined(&HX509_REVOKE_NOT_SAME_PARENT);
    eval("sub HX509_CERT_NOT_IN_OCSP () { 569960; }") unless defined(&HX509_CERT_NOT_IN_OCSP);
    eval("sub HX509_LOCAL_ATTRIBUTE_MISSING () { 569964; }") unless defined(&HX509_LOCAL_ATTRIBUTE_MISSING);
    eval("sub HX509_PARSING_KEY_FAILED () { 569965; }") unless defined(&HX509_PARSING_KEY_FAILED);
    eval("sub HX509_UNSUPPORTED_OPERATION () { 569966; }") unless defined(&HX509_UNSUPPORTED_OPERATION);
    eval("sub HX509_UNIMPLEMENTED_OPERATION () { 569967; }") unless defined(&HX509_UNIMPLEMENTED_OPERATION);
    eval("sub HX509_PARSING_NAME_FAILED () { 569968; }") unless defined(&HX509_PARSING_NAME_FAILED);
    eval("sub HX509_PKCS11_NO_SLOT () { 569984; }") unless defined(&HX509_PKCS11_NO_SLOT);
    eval("sub HX509_PKCS11_NO_TOKEN () { 569985; }") unless defined(&HX509_PKCS11_NO_TOKEN);
    eval("sub HX509_PKCS11_NO_MECH () { 569986; }") unless defined(&HX509_PKCS11_NO_MECH);
    eval("sub HX509_PKCS11_TOKEN_CONFUSED () { 569987; }") unless defined(&HX509_PKCS11_TOKEN_CONFUSED);
    eval("sub HX509_PKCS11_OPEN_SESSION () { 569988; }") unless defined(&HX509_PKCS11_OPEN_SESSION);
    eval("sub HX509_PKCS11_LOGIN () { 569989; }") unless defined(&HX509_PKCS11_LOGIN);
    eval("sub HX509_PKCS11_LOAD () { 569990; }") unless defined(&HX509_PKCS11_LOAD);
    eval 'sub ERROR_TABLE_BASE_hx () {569856;}' unless defined(&ERROR_TABLE_BASE_hx);
    eval 'sub COM_ERR_BINDDOMAIN_hx () {"heim_com_err569856";}' unless defined(&COM_ERR_BINDDOMAIN_hx);
}
1;
