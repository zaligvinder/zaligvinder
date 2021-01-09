(declare-const X String)
; about\d+yxegtd\x2fefcwgHost\x3ATPSystemwww\x2Ee-finder\x2Ecc
(assert (not (str.in.re X (re.++ (str.to.re "about") (re.+ (re.range "0" "9")) (str.to.re "yxegtd/efcwgHost:TPSystemwww.e-finder.cc\x0a")))))
; [^a-zA-Z0-9]+
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; Host\x3aSubject\x3AClientnamedFrom\x3A
(assert (str.in.re X (str.to.re "Host:Subject:ClientnamedFrom:\x0a")))
; \.fcgi[^\n\r]*Host\x3A\s\x5D\x2520\x5BPort_NETObserveTM_SEARCH3
(assert (str.in.re X (re.++ (str.to.re ".fcgi") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "]%20[Port_NETObserveTM_SEARCH3\x0a"))))
(check-sat)
