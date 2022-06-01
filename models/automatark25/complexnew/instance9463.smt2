(declare-const X String)
; mywayHost\u{3A}www\u{2E}eblocs\u{2E}com
(assert (not (str.in_re X (str.to_re "mywayHost:www.eblocs.com\u{1b}\u{a}"))))
; e2give\.comConnectionSpywww\u{2E}slinkyslate
(assert (not (str.in_re X (str.to_re "e2give.comConnectionSpywww.slinkyslate\u{a}"))))
; dialupvpn\u{5f}pwd\d\<title\>Actual\sSpywareStrike\s+fowclxccdxn\u{2f}uxwn\.ddywww\u{2e}virusprotectpro\u{2e}com
(assert (str.in_re X (re.++ (str.to_re "dialupvpn_pwd") (re.range "0" "9") (str.to_re "<title>Actual") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "SpywareStrike") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "fowclxccdxn/uxwn.ddywww.virusprotectpro.com\u{a}"))))
; Subject\u{3A}KeyloggerSAHHost\u{3A}Surveillancenotification\u{2F}download\u{2F}toolbar\u{2F}locatorstoolbar
(assert (not (str.in_re X (str.to_re "Subject:KeyloggerSAHHost:Surveillance\u{13}notification\u{13}/download/toolbar/locatorstoolbar\u{a}"))))
; /\/software\u{2e}php\u{3f}[0-9]{15,}/Ui
(assert (str.in_re X (re.++ (str.to_re "//software.php?/Ui\u{a}") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9")))))
(check-sat)
