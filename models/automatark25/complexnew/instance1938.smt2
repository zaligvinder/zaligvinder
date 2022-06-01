(declare-const X String)
; name\u{2e}cnnic\u{2e}cn\scom\u{2F}index\.php\?tpid=\s\u{5B}Static.*\u{2F}bar_pl\u{2F}b\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "name.cnnic.cn") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "com/index.php?tpid=") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "[Static") (re.* re.allchar) (str.to_re "/bar_pl/b.fcgi\u{a}")))))
; www\u{2E}cameup\u{2E}com\s+spyblini\u{2E}ini
(assert (str.in_re X (re.++ (str.to_re "www.cameup.com\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblini.ini\u{a}"))))
; /filename=[^\n]*\u{2e}vsd/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vsd/i\u{a}"))))
; ZC-Bridge\s+www\u{2E}webcruiser\u{2E}cc\u{22}StealthReferer\u{3A}Contact
(assert (str.in_re X (re.++ (str.to_re "ZC-Bridge") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.webcruiser.cc\u{22}StealthReferer:Contact\u{a}"))))
; /filename=[^\n]*\u{2e}pdf/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pdf/i\u{a}"))))
(check-sat)
