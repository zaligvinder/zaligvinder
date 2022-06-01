(declare-const X String)
; /filename=[^\n]*\u{2e}xls/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xls/i\u{a}")))))
; forum=.*Explorer\s+Host\u{3A}act=Host\u{3a}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "forum=") (re.* re.allchar) (str.to_re "Explorer") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:act=Host:User-Agent:\u{a}")))))
; /filename\=[a-z0-9]{24}\.exe/H
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") ((_ re.loop 24 24) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".exe/H\u{a}")))))
(check-sat)
