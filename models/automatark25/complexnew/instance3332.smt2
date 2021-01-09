(declare-const X String)
; (\d{1,3},(\d{3},)*\d{3}(\.\d{1,3})?|\d{1,3}(\.\d{3})?)$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")))))) (str.to.re "\x0a")))))
; YAHOO.*Host\x3A.*\x2Fcs\x2Fpop4\x2F
(assert (str.in.re X (re.++ (str.to.re "YAHOO") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "/cs/pop4/\x0a"))))
; /\x28compatible\x3b[A-Z]*\x3b\x29\x0d\x0a/H
(assert (str.in.re X (re.++ (str.to.re "/(compatible;") (re.* (re.range "A" "Z")) (str.to.re ";)\x0d\x0a/H\x0a"))))
(check-sat)
