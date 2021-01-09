(declare-const X String)
; /\/stat_d\/$/U
(assert (not (str.in.re X (str.to.re "//stat_d//U\x0a"))))
; ^(([0]?[1-9]|[1-2][0-3])(:)([0-5][0-9]))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "3"))) (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))))
; logs\d+X-Mailer\x3a\d+url=enews\x2Eearthlink\x2Enet
(assert (str.in.re X (re.++ (str.to.re "logs") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13") (re.+ (re.range "0" "9")) (str.to.re "url=enews.earthlink.net\x0a"))))
(check-sat)
