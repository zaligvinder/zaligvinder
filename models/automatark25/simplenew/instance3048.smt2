(declare-const X String)
; Host\u{3A}Host\u{3A}alertseqepagqfphv\u{2f}sfd
(assert (str.in_re X (str.to_re "Host:Host:alertseqepagqfphv/sfd\u{a}")))
(check-sat)
