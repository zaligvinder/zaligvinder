(declare-const X String)
; ^(\[a-zA-Z '\]+)$
(assert (str.in.re X (re.++ (str.to.re "\x0a[a-zA-Z '") (re.+ (str.to.re "]")))))
; Host\x3AHost\x3afhfksjzsfu\x2fahm\.uqsHost\x3Afowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (str.to.re "Host:Host:fhfksjzsfu/ahm.uqsHost:fowclxccdxn/uxwn.ddy\x0a")))
; www\x2Ewebcruiser\x2Eccgot
(assert (str.in.re X (str.to.re "www.webcruiser.ccgot\x0a")))
(check-sat)
