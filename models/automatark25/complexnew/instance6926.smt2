(declare-const X String)
; HXLogOnly\w+Host\x3AspasHost\x3A
(assert (str.in.re X (re.++ (str.to.re "HXLogOnly") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:spasHost:\x0a"))))
; (^\d{1,3}([,]\d{3})*$)|(^\d{1,16}$)
(assert (str.in.re X (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 16) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
