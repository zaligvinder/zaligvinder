(declare-const X String)
; \x5D\x2520\x5BPort_\d+TM_SEARCH3engineto=\x2Fezsb\s\x3A
(assert (not (str.in.re X (re.++ (str.to.re "]%20[Port_") (re.+ (re.range "0" "9")) (str.to.re "TM_SEARCH3engineto=/ezsb") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re ":\x0a")))))
(check-sat)
