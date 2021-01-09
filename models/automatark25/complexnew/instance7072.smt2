(declare-const X String)
; Reporter\s+Host\x3A.*search\x2econduit\x2ecomTM_SEARCH3
(assert (str.in.re X (re.++ (str.to.re "Reporter") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* re.allchar) (str.to.re "search.conduit.comTM_SEARCH3\x0a"))))
; [\dA-Za-z]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
(check-sat)
