(declare-const X String)
; Login.*Host\x3A\s+Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (str.in.re X (re.++ (str.to.re "Login") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Host:alertseqepagqfphv/sfd\x0a"))))
(check-sat)
