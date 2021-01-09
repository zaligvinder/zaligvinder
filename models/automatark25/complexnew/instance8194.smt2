(declare-const X String)
; /\x3Fp\x3D[0-9]{1,10}\x26d\x3D/U
(assert (str.in.re X (re.++ (str.to.re "/?p=") ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re "&d=/U\x0a"))))
; ^(([1][0-2])|([0]?[1-9]{1}))\/(([0-2]?\d{1})|([3][0,1]{1}))\/(([1]{1}[9]{1}[9]{1}\d{1})|([2-9]{1}\d{3}))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) ((_ re.loop 1 1) (re.range "1" "9")))) (str.to.re "/") (re.union (re.++ (re.opt (re.range "0" "2")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "3") ((_ re.loop 1 1) (re.union (str.to.re "0") (str.to.re ",") (str.to.re "1"))))) (str.to.re "/") (re.union (re.++ ((_ re.loop 1 1) (str.to.re "1")) ((_ re.loop 1 1) (str.to.re "9")) ((_ re.loop 1 1) (str.to.re "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
; [ ]*=[ ]*[\"]*cid[ ]*:[ ]*([^\"<> ]+)
(assert (not (str.in.re X (re.++ (re.* (str.to.re " ")) (str.to.re "=") (re.* (str.to.re " ")) (re.* (str.to.re "\x22")) (str.to.re "cid") (re.* (str.to.re " ")) (str.to.re ":") (re.* (str.to.re " ")) (re.+ (re.union (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re " "))) (str.to.re "\x0a")))))
; (([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)?){1}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.++ (re.* ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/")))) (re.opt (re.union (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) (str.to.re "=")) (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "+") (str.to.re "/"))) (str.to.re "==")))))) (str.to.re "\x0a")))))
(check-sat)
