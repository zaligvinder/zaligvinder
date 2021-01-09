(declare-const X String)
; ^([A-Z]{2}|[A-Z]\d|\d[A-Z])[1-9](\d{1,3})?$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 2 2) (re.range "A" "Z")) (re.++ (re.range "A" "Z") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "A" "Z"))) (re.range "1" "9") (re.opt ((_ re.loop 1 3) (re.range "0" "9"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ewrf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wrf/i\x0a")))))
; ^(\d)?(\d|,)*\.?\d{1,2}$
(assert (not (str.in.re X (re.++ (re.opt (re.range "0" "9")) (re.* (re.union (re.range "0" "9") (str.to.re ","))) (re.opt (str.to.re ".")) ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; [a-zA-Z]*( [a-zA-Z]*)?
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.++ (str.to.re " ") (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a")))))
; ^[^ ,0]*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re ",") (str.to.re "0"))) (str.to.re "\x0a")))))
(check-sat)
