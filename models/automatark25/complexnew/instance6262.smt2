(declare-const X String)
; (^\d{5}-\d{3}|^\d{2}.\d{3}-\d{3}|\d{8})
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 8 8) (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^(0|(-?(((0|[1-9]\d*)\.\d+)|([1-9]\d*))))$
(assert (str.in.re X (re.++ (re.union (str.to.re "0") (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.* (re.range "0" "9")))))) (str.to.re "\x0a"))))
; ^[A-Z][a-z]+(o(i|u)(n|(v)?r(t)?|s|t|x)(e(s)?)?)$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0ao") (re.union (str.to.re "i") (str.to.re "u")) (re.union (str.to.re "n") (re.++ (re.opt (str.to.re "v")) (str.to.re "r") (re.opt (str.to.re "t"))) (str.to.re "s") (str.to.re "t") (str.to.re "x")) (re.opt (re.++ (str.to.re "e") (re.opt (str.to.re "s"))))))))
; ([+(]?\d{0,2}[)]?)([-/.\s]?\d+)+
(assert (str.in.re X (re.++ (re.+ (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "/") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a") (re.opt (re.union (str.to.re "+") (str.to.re "("))) ((_ re.loop 0 2) (re.range "0" "9")) (re.opt (str.to.re ")")))))
(check-sat)
