(declare-const X String)
; ZC-Bridge\d+JMail\d+GENERAL_PARAM2
(assert (str.in.re X (re.++ (str.to.re "ZC-Bridge") (re.+ (re.range "0" "9")) (str.to.re "JMail") (re.+ (re.range "0" "9")) (str.to.re "GENERAL_PARAM2\x0a"))))
; ^(.*?)([^/\\]*?)(\.[^/\\.]*)?$
(assert (not (str.in.re X (re.++ (re.* re.allchar) (re.* (re.union (str.to.re "/") (str.to.re "\x5c"))) (re.opt (re.++ (str.to.re ".") (re.* (re.union (str.to.re "/") (str.to.re "\x5c") (str.to.re "."))))) (str.to.re "\x0a")))))
; (\<\?php\s+.*?((\?\>)|$))
(assert (str.in.re X (re.++ (str.to.re "\x0a<?php") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar) (str.to.re "?>"))))
(check-sat)
