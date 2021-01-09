(declare-const X String)
; ^(([+]\d{2}[ ][1-9]\d{0,2}[ ])|([0]\d{1,3}[-]))((\d{2}([ ]\d{2}){2})|(\d{3}([ ]\d{3})*([ ]\d{2})+))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "+") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re " ") (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re " ")) (re.++ (str.to.re "0") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "-"))) (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.++ (str.to.re " ") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.* (re.++ (str.to.re " ") ((_ re.loop 3 3) (re.range "0" "9")))) (re.+ (re.++ (str.to.re " ") ((_ re.loop 2 2) (re.range "0" "9")))))) (str.to.re "\x0a")))))
(check-sat)
