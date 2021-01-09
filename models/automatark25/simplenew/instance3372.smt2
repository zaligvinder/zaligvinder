(declare-const X String)
; ((0)+(\.[1-9](\d)?))|((0)+(\.(\d)[1-9]+))|(([1-9]+(0)?)+(\.\d+)?)|(([1-9]+(0)?)+(\.\d+)?)
(assert (str.in.re X (re.union (re.++ (re.+ (str.to.re "0")) (str.to.re ".") (re.range "1" "9") (re.opt (re.range "0" "9"))) (re.++ (re.+ (str.to.re "0")) (str.to.re ".") (re.range "0" "9") (re.+ (re.range "1" "9"))) (re.++ (re.+ (re.++ (re.+ (re.range "1" "9")) (re.opt (str.to.re "0")))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (re.++ (str.to.re "\x0a") (re.+ (re.++ (re.+ (re.range "1" "9")) (re.opt (str.to.re "0")))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))))))
(check-sat)
