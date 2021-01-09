(declare-const X String)
; ^[1-9][0-9]{0,6}(|.[0-9]{1,2}|,[0-9]{1,2})?
(assert (not (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 0 6) (re.range "0" "9")) (re.opt (re.union (re.++ re.allchar ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to.re ",") ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to.re "\x0a")))))
(check-sat)
