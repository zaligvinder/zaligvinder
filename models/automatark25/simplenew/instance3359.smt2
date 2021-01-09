(declare-const X String)
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (str.in.re X (str.to.re "Host:Host:alertseqepagqfphv/sfd\x0a")))
(check-sat)
