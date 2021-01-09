(declare-const X String)
; EFError.*\x2Fcs\x2Fpop4\x2F[^\n\r]*
(assert (str.in.re X (re.++ (str.to.re "EFError") (re.* re.allchar) (str.to.re "/cs/pop4/") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; &
(assert (str.in.re X (str.to.re "&\x0a")))
; Handyst=ClassStopperHost\x3ASpamBlockerUtility
(assert (not (str.in.re X (str.to.re "Handyst=ClassStopperHost:SpamBlockerUtility\x0a"))))
(check-sat)
