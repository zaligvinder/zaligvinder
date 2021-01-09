(declare-const X String)
; ^[A-Za-z]\d[A-Za-z][ -]?\d[A-Za-z]\d$
(assert (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (str.to.re "\x0a"))))
; ((X|x):-?(180(\.0+)?|[0-1]?[0-7]?[0-9](\.\d+)?))([ ]|,)*((Y|y):-?(90(\.0+)?|[0-8]?[0-9](\.\d+)?))
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re ","))) (str.to.re "\x0a") (re.union (str.to.re "X") (str.to.re "x")) (str.to.re ":") (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "180") (re.opt (re.++ (str.to.re ".") (re.+ (str.to.re "0"))))) (re.++ (re.opt (re.range "0" "1")) (re.opt (re.range "0" "7")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))))) (re.union (str.to.re "Y") (str.to.re "y")) (str.to.re ":") (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "90") (re.opt (re.++ (str.to.re ".") (re.+ (str.to.re "0"))))) (re.++ (re.opt (re.range "0" "8")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))))))))
(check-sat)
