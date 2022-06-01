(declare-const X String)
; ZC-Bridge\d+JMail\d+GENERAL_PARAM2
(assert (str.in_re X (re.++ (str.to_re "ZC-Bridge") (re.+ (re.range "0" "9")) (str.to_re "JMail") (re.+ (re.range "0" "9")) (str.to_re "GENERAL_PARAM2\u{a}"))))
; ^(.*?)([^/\\]*?)(\.[^/\\.]*)?$
(assert (not (str.in_re X (re.++ (re.* re.allchar) (re.* (re.union (str.to_re "/") (str.to_re "\u{5c}"))) (re.opt (re.++ (str.to_re ".") (re.* (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re "."))))) (str.to_re "\u{a}")))))
; (\<\?php\s+.*?((\?\>)|$))
(assert (str.in_re X (re.++ (str.to_re "\u{a}<?php") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* re.allchar) (str.to_re "?>"))))
(check-sat)
