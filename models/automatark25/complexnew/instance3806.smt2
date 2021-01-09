(declare-const X String)
; X-Mailer\x3aUser-Agent\x3A
(assert (str.in.re X (str.to.re "X-Mailer:\x13User-Agent:\x0a")))
; ^[0-9](\.[0-9]+)?$
(assert (str.in.re X (re.++ (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
