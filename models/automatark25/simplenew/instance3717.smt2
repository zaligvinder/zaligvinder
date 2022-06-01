(declare-const X String)
; /\.html\?sv=[1-5](\,\d+?){1,3}$/U
(assert (str.in_re X (re.++ (str.to_re "/.html?sv=") (re.range "1" "5") ((_ re.loop 1 3) (re.++ (str.to_re ",") (re.+ (re.range "0" "9")))) (str.to_re "/U\u{a}"))))
(check-sat)
