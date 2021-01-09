(declare-const X String)
; ((X|x):-?(180(\.0+)?|[0-1]?[0-7]?[0-9](\.\d+)?))([ ]|,)*((Y|y):-?(90(\.0+)?|[0-8]?[0-9](\.\d+)?))
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re ","))) (str.to.re "\x0a") (re.union (str.to.re "X") (str.to.re "x")) (str.to.re ":") (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "180") (re.opt (re.++ (str.to.re ".") (re.+ (str.to.re "0"))))) (re.++ (re.opt (re.range "0" "1")) (re.opt (re.range "0" "7")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))))) (re.union (str.to.re "Y") (str.to.re "y")) (str.to.re ":") (re.opt (str.to.re "-")) (re.union (re.++ (str.to.re "90") (re.opt (re.++ (str.to.re ".") (re.+ (str.to.re "0"))))) (re.++ (re.opt (re.range "0" "8")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))))))))
; configINTERNAL\.ini.*SecureNet\s+User-Agent\x3Aregister\.asp
(assert (not (str.in.re X (re.++ (str.to.re "configINTERNAL.ini") (re.* re.allchar) (str.to.re "SecureNet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:register.asp\x0a")))))
(check-sat)
