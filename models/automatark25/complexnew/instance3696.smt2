(declare-const X String)
; ^(\d+|[a-zA-Z]+)$
(assert (not (str.in.re X (re.++ (re.union (re.+ (re.range "0" "9")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z")))) (str.to.re "\x0a")))))
; [A-Z][a-z]+
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a"))))
; ^([0-9]{5})([\-]{1}[0-9]{4})?$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
