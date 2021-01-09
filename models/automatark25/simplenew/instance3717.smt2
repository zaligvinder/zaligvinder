(declare-const X String)
; /\.html\?sv=[1-5](\,\d+?){1,3}$/U
(assert (str.in.re X (re.++ (str.to.re "/.html?sv=") (re.range "1" "5") ((_ re.loop 1 3) (re.++ (str.to.re ",") (re.+ (re.range "0" "9")))) (str.to.re "/U\x0a"))))
(check-sat)
