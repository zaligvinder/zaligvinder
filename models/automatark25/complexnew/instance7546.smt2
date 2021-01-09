(declare-const X String)
; ((0[1-9])|(1[02]))/\d{2}
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "2")))) (str.to.re "/") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; User-Agent\x3A\d+Theef2\sHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "Theef2") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:\x0a")))))
; ((X|x):-?(180(\.0+)?|[0-1]?[0-7]?[0-9](\.\d+)?))([ ]|,)*((Y|y):-?(90(\.0+)?|[0-8]?[0-9](\.\d+)?))
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re ","))) (str.to.re "\x0a") (re.union (str.to.re "X") (str.to.re "x")) (str.to.re ":") (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "180") (re.opt (re.++ (str.to.re ".") (re.+ (str.to.re "0"))))) (re.++ (re.opt (re.range "0" "1")) (re.opt (re.range "0" "7")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))))) (re.union (str.to.re "Y") (str.to.re "y")) (str.to.re ":") (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "90") (re.opt (re.++ (str.to.re ".") (re.+ (str.to.re "0"))))) (re.++ (re.opt (re.range "0" "8")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))))))))
(check-sat)
