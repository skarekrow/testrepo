require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__FLEX_LEXER_H)) {
    eval 'sub __FLEX_LEXER_H () {1;}' unless defined(&__FLEX_LEXER_H);
    require 'iostream';
    unless(defined(&FLEX_STD)) {
	eval 'sub FLEX_STD () { &std::;}' unless defined(&FLEX_STD);
    }
}
if(defined(&yyFlexLexer) || ! defined(&yyFlexLexerOnce)) {
    eval 'sub yyFlexLexerOnce () {1;}' unless defined(&yyFlexLexerOnce);
}
1;
