(declare-const X String)
; seqepagqfphv\u{2f}sfdX-Mailer\u{3A}
(assert (not (str.in_re X (str.to_re "seqepagqfphv/sfdX-Mailer:\u{13}\u{a}"))))
(check-sat)
