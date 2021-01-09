(declare-const X String)
; Toolbar\s+Host\x3A\w+Host\x3AEIcdpnode=reportUID\x2FServertoX-Mailer\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:EIcdpnode=reportUID/ServertoX-Mailer:\x13\x0a")))))
(check-sat)
