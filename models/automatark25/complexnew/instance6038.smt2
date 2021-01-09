(declare-const X String)
; Spy\s+toolbar_domain_redirect
(assert (not (str.in.re X (re.++ (str.to.re "Spy") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "toolbar_domain_redirect\x0a")))))
; Host\x3A\dKeylogger.*Onetrustyfiles\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Keylogger") (re.* re.allchar) (str.to.re "Onetrustyfiles.com\x0a"))))
; (([\w-]+://?|www[.])[^\s()<>]+)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ":/") (re.opt (str.to.re "/"))) (str.to.re "www.")) (re.+ (re.union (str.to.re "(") (str.to.re ")") (str.to.re "<") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
(check-sat)
