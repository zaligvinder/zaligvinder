(declare-const X String)
; /new (java|org)/Ui
(assert (not (str.in_re X (re.++ (str.to_re "/new ") (re.union (str.to_re "java") (str.to_re "org")) (str.to_re "/Ui\u{a}")))))
; track\s+community\d+4\u{2e}8\u{2e}4www\u{2E}maxifiles\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "track") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "community") (re.+ (re.range "0" "9")) (str.to_re "4.8.4www.maxifiles.com\u{a}"))))
; ^[89]\d{7}$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "8") (str.to_re "9")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}")))))
; ^R(\d){8}
(assert (not (str.in_re X (re.++ (str.to_re "R") ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
