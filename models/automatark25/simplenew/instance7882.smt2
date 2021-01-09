(declare-const X String)
; portSpediaYourtraffbest\x2EbizUser-Agent\x3ACSmtpMonsterixqshv\x2fqzccsHost\x3A
(assert (str.in.re X (str.to.re "portSpediaYourtraffbest.bizUser-Agent:CSmtpMonsterixqshv/qzccsHost:\x0a")))
(check-sat)
