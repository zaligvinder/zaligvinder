(declare-const X String)
; /\/setup\/[a-z0-9!-]{50}/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//setup/") ((_ re.loop 50 50) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "!") (str.to_re "-"))) (str.to_re "/Ui\u{a}")))))
; logs\s+TCP.*Toolbarads\.grokads\.com
(assert (not (str.in_re X (re.++ (str.to_re "logs") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "TCP") (re.* re.allchar) (str.to_re "Toolbarads.grokads.com\u{a}")))))
(check-sat)
