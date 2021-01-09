(declare-const X String)
; Host\x3A\s+\x2APORT3\x2A\[DRIVEwww\.raxsearch\.comSubject\x3aHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*PORT3*[DRIVEwww.raxsearch.comSubject:Host:\x0a")))))
; BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches\x2Eworldtostart\x2Ecom
(assert (str.in.re X (str.to.re "BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches.worldtostart.com\x0a")))
; \\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}
(assert (str.in.re X (re.++ (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x5c") re.allchar (str.to.re "\x5c") ((_ re.loop 1 3) (str.to.re "d")) (str.to.re "\x0a"))))
(check-sat)
