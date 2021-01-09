(declare-const X String)
; [^"]+
(assert (str.in.re X (re.++ (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x0a"))))
; ^[1-9]{1}[0-9]{0,2}([\.\,]?[0-9]{3})*$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (str.to.re ".") (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^([0-9]|[1-9][0-9]|[1-9][0-9][0-9])$
(assert (not (str.in.re X (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
