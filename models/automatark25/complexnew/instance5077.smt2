(declare-const X String)
; hirmvtg\u{2f}ggqh\.kqhSurveillanceHost\u{3A}
(assert (str.in_re X (str.to_re "hirmvtg/ggqh.kqh\u{1b}Surveillance\u{13}Host:\u{a}")))
; ^[a-zA-Z0-9]+$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; www\u{2E}webcruiser\u{2E}ccgot
(assert (str.in_re X (str.to_re "www.webcruiser.ccgot\u{a}")))
; ^([a-z0-9]{32})$
(assert (not (str.in_re X (re.++ ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "\u{a}")))))
; From\u{3A}.*Host\u{3A}\s+Downloadfowclxccdxn\u{2f}uxwn\.ddy
(assert (not (str.in_re X (re.++ (str.to_re "From:") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Downloadfowclxccdxn/uxwn.ddy\u{a}")))))
(check-sat)
