(declare-const X String)
; CUSTOM\swww\u{2E}locators\u{2E}com\d+Seconds\-
(assert (str.in_re X (re.++ (str.to_re "CUSTOM") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.locators.com") (re.+ (re.range "0" "9")) (str.to_re "Seconds-\u{a}"))))
; .*[Pp]en[Ii1][\$s].*
(assert (not (str.in_re X (re.++ (re.* re.allchar) (re.union (str.to_re "P") (str.to_re "p")) (str.to_re "en") (re.union (str.to_re "I") (str.to_re "i") (str.to_re "1")) (re.union (str.to_re "$") (str.to_re "s")) (re.* re.allchar) (str.to_re "\u{a}")))))
; (CREATE|ALTER) +(PROCEDURE|PROC|FUNCTION|VIEW) *(\[(.*)\]|(.*))
(assert (not (str.in_re X (re.++ (re.union (str.to_re "CREATE") (str.to_re "ALTER")) (re.+ (str.to_re " ")) (re.union (str.to_re "PROCEDURE") (str.to_re "PROC") (str.to_re "FUNCTION") (str.to_re "VIEW")) (re.* (str.to_re " ")) (re.union (re.++ (str.to_re "[") (re.* re.allchar) (str.to_re "]")) (re.* re.allchar)) (str.to_re "\u{a}")))))
(check-sat)
