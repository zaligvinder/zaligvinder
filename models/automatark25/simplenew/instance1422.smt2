(declare-const X String)
; Host\x3a\w+Host\x3A\d+anHost\x3AspasHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "anHost:spasHost:\x0a")))))
(check-sat)
