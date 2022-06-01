(declare-const X String)
; ^([a-zA-Z].*|[1-9].*)\.(((j|J)(p|P)(g|G))|((g|G)(i|I)(f|F)))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* re.allchar)) (re.++ (re.range "1" "9") (re.* re.allchar))) (str.to_re ".") (re.union (re.++ (re.union (str.to_re "j") (str.to_re "J")) (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "g") (str.to_re "G"))) (re.++ (re.union (str.to_re "g") (str.to_re "G")) (re.union (str.to_re "i") (str.to_re "I")) (re.union (str.to_re "f") (str.to_re "F")))) (str.to_re "\u{a}")))))
; [a-zA-Z]+\-?[a-zA-Z]+
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (str.to_re "-")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{a}")))))
; /\u{2f}panda\u{2f}\u{3f}u\u{3d}[a-z0-9]{32}/U
(assert (str.in_re X (re.++ (str.to_re "//panda/?u=") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "/U\u{a}"))))
; YWRtaW46YWRtaW4www\u{2E}e-finder\u{2E}ccNSIS_DOWNLOADHost\u{3A}
(assert (str.in_re X (str.to_re "YWRtaW46YWRtaW4www.e-finder.ccNSIS_DOWNLOADHost:\u{a}")))
(check-sat)
