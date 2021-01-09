(declare-const X String)
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (not (str.in.re X (str.to.re "Host:Host:alertseqepagqfphv/sfd\x0a"))))
; Download\d+ocllceclbhs\x2fgth
(assert (not (str.in.re X (re.++ (str.to.re "Download") (re.+ (re.range "0" "9")) (str.to.re "ocllceclbhs/gth\x0a")))))
; ^([a-hA-H]{1}[1-8]{1})$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 1) (re.union (re.range "a" "h") (re.range "A" "H"))) ((_ re.loop 1 1) (re.range "1" "8"))))))
; Host\x3Astech\x2Eweb-nexus\x2EnetHost\x3A
(assert (str.in.re X (str.to.re "Host:stech.web-nexus.netHost:\x0a")))
(check-sat)
