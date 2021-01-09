(declare-const X String)
; Reports[^\n\r]*User-Agent\x3A.*largePass-Onseqepagqfphv\x2fsfd
(assert (not (str.in.re X (re.++ (str.to.re "Reports") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "largePass-Onseqepagqfphv/sfd\x0a")))))
(check-sat)
