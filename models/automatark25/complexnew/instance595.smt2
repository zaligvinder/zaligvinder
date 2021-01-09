(declare-const X String)
; are\d+X-Mailer\x3a+Host\x3A\x2Easpx
(assert (not (str.in.re X (re.++ (str.to.re "are") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer") (re.+ (str.to.re ":")) (str.to.re "Host:.aspx\x0a")))))
; Windows\x2Fclient\x2FBlackreportc\.goclick\.comX-Sender\x3A
(assert (str.in.re X (str.to.re "Windows/client/Blackreportc.goclick.comX-Sender:\x13\x0a")))
(check-sat)
