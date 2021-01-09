(declare-const X String)
; hirmvtg\x2fggqh\.kqhSurveillanceHost\x3A
(assert (str.in.re X (str.to.re "hirmvtg/ggqh.kqh\x1bSurveillance\x13Host:\x0a")))
; ^[a-zA-Z0-9]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; www\x2Ewebcruiser\x2Eccgot
(assert (str.in.re X (str.to.re "www.webcruiser.ccgot\x0a")))
; ^([a-z0-9]{32})$
(assert (not (str.in.re X (re.++ ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; From\x3A.*Host\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddy
(assert (not (str.in.re X (re.++ (str.to.re "From:") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Downloadfowclxccdxn/uxwn.ddy\x0a")))))
(check-sat)
