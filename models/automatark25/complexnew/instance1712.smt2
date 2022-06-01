(declare-const X String)
; \u{2F}bar_pl\u{2F}chk\.fcgiHWAEcom\u{2F}index\.php\?tpid=
(assert (not (str.in_re X (str.to_re "/bar_pl/chk.fcgiHWAEcom/index.php?tpid=\u{a}"))))
; nick_name=CIA-Test\s+User-Agent\u{3A}\s+Downloadfowclxccdxn\u{2f}uxwn\.ddywww\u{2E}easymessage\u{2E}net
(assert (not (str.in_re X (re.++ (str.to_re "nick_name=CIA-Test") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Downloadfowclxccdxn/uxwn.ddywww.easymessage.net\u{a}")))))
; ^\s*[a-zA-Z0-9,\s]+\s*$
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ",") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; \u{2F}xml\u{2F}toolbar\u{2F}Exploiter
(assert (str.in_re X (str.to_re "/xml/toolbar/Exploiter\u{a}")))
; /\?a=dw[a-z]$/U
(assert (not (str.in_re X (re.++ (str.to_re "/?a=dw") (re.range "a" "z") (str.to_re "/U\u{a}")))))
(check-sat)
