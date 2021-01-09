(declare-const X String)
; HXLogOnly\w+Host\x3AspasHost\x3A
(assert (str.in.re X (re.++ (str.to.re "HXLogOnly") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:spasHost:\x0a"))))
(check-sat)
