(declare-const X String)
; portSpediaYourtraffbest\u{2E}bizUser-Agent\u{3A}CSmtpMonsterixqshv\u{2f}qzccsHost\u{3A}
(assert (str.in_re X (str.to_re "portSpediaYourtraffbest.bizUser-Agent:CSmtpMonsterixqshv/qzccsHost:\u{a}")))
(check-sat)
