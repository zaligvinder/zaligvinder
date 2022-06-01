(declare-const X String)
; ^[A-Za-z]\d[A-Za-z][ -]?\d[A-Za-z]\d$
(assert (str.in_re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")) (re.range "0" "9") (str.to_re "\u{a}"))))
; ((X|x):-?(180(\.0+)?|[0-1]?[0-7]?[0-9](\.\d+)?))([ ]|,)*((Y|y):-?(90(\.0+)?|[0-8]?[0-9](\.\d+)?))
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re ","))) (str.to_re "\u{a}") (re.union (str.to_re "X") (str.to_re "x")) (str.to_re ":") (re.opt (str.to_re "-")) (re.union (re.++ (str.to_re "180") (re.opt (re.++ (str.to_re ".") (re.+ (str.to_re "0"))))) (re.++ (re.opt (re.range "0" "1")) (re.opt (re.range "0" "7")) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))))) (re.union (str.to_re "Y") (str.to_re "y")) (str.to_re ":") (re.opt (str.to_re "-")) (re.union (re.++ (str.to_re "90") (re.opt (re.++ (str.to_re ".") (re.+ (str.to_re "0"))))) (re.++ (re.opt (re.range "0" "8")) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))))))))
(check-sat)
