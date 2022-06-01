(declare-const X String)
; Login.*Host\u{3A}\s+Host\u{3A}Host\u{3A}alertseqepagqfphv\u{2f}sfd
(assert (not (str.in_re X (re.++ (str.to_re "Login") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Host:alertseqepagqfphv/sfd\u{a}")))))
(check-sat)
