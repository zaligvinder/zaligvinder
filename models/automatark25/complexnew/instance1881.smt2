(declare-const X String)
; SpyBuddySubject\x3Astats\x2edrivecleaner\x2ecom
(assert (str.in.re X (str.to.re "SpyBuddySubject:stats.drivecleaner.com\x13\x0a")))
; ^(([a-z])+.)+[A-Z]([a-z])+$
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.range "a" "z")) re.allchar)) (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a")))))
; ^(GIR|[A-Z]\d[A-Z\d]??|[A-Z]{2}\d[A-Z\d]??)[ ]??(\d[A-Z]{2})$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "GIR") (re.++ (re.range "A" "Z") (re.range "0" "9") (re.opt (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.range "0" "9") (re.opt (re.union (re.range "A" "Z") (re.range "0" "9"))))) (re.opt (str.to.re " ")) (str.to.re "\x0a") (re.range "0" "9") ((_ re.loop 2 2) (re.range "A" "Z"))))))
; BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches\x2Eworldtostart\x2Ecom
(assert (not (str.in.re X (str.to.re "BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches.worldtostart.com\x0a"))))
(check-sat)
