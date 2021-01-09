(declare-const X String)
; ^[a-zA-Z]+(([\'\,\.\-][a-zA-Z])?[a-zA-Z]*)*$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (re.opt (re.++ (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-")) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a"))))
; ^[\\(]{0,1}[0-9]{3}([\\)]{0,1}|-|\s){0,1}[0-9]{3}(-|\s){0,1}[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "\x5c") (str.to.re "("))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (re.opt (re.union (str.to.re "\x5c") (str.to.re ")"))) (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; <img([^>]*[^/])>
(assert (str.in.re X (re.++ (str.to.re "<img>\x0a") (re.* (re.comp (str.to.re ">"))) (re.comp (str.to.re "/")))))
(check-sat)
