(declare-const X String)
; subject\x3Anode=LoginNSIS_DOWNLOAD
(assert (not (str.in.re X (str.to.re "subject:node=LoginNSIS_DOWNLOAD\x0a"))))
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (str.in.re X (str.to.re "Host:Host:alertseqepagqfphv/sfd\x0a")))
; \\s\\d{2}[-]\\w{3}-\\d{4}
(assert (str.in.re X (re.++ (str.to.re "\x5cs\x5c") ((_ re.loop 2 2) (str.to.re "d")) (str.to.re "-\x5c") ((_ re.loop 3 3) (str.to.re "w")) (str.to.re "-\x5c") ((_ re.loop 4 4) (str.to.re "d")) (str.to.re "\x0a"))))
(check-sat)
