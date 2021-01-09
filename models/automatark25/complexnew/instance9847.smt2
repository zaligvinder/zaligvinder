(declare-const X String)
; /exploit\/(Exploit(App)?|Loader)\.class/ims
(assert (str.in.re X (re.++ (str.to.re "/exploit/") (re.union (re.++ (str.to.re "Exploit") (re.opt (str.to.re "App"))) (str.to.re "Loader")) (str.to.re ".class/ims\x0a"))))
; ([.])([a-z,1-9]{3,4})(\/)
(assert (str.in.re X (re.++ (str.to.re ".") ((_ re.loop 3 4) (re.union (re.range "a" "z") (str.to.re ",") (re.range "1" "9"))) (str.to.re "/\x0a"))))
; /\/[a-zA-Z_-]+\.doc$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re ".doc/U\x0a")))))
; ^((\d{8})|(\d{10})|(\d{11})|(\d{6}-\d{5}))?$
(assert (str.in.re X (re.++ (re.opt (re.union ((_ re.loop 8 8) (re.range "0" "9")) ((_ re.loop 10 10) (re.range "0" "9")) ((_ re.loop 11 11) (re.range "0" "9")) (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 5 5) (re.range "0" "9"))))) (str.to.re "\x0a"))))
(check-sat)
