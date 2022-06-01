(declare-const X String)
; track\s+community\d+4\u{2e}8\u{2e}4www\u{2E}maxifiles\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "track") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "community") (re.+ (re.range "0" "9")) (str.to_re "4.8.4www.maxifiles.com\u{a}")))))
(check-sat)
