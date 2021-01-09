(declare-const X String)
; (^\d{1,3}([,]\d{3})*$)|(^\d{1,16}$)
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 16) (re.range "0" "9")) (str.to.re "\x0a"))))))
; [a-zA-Z]*( [a-zA-Z]*)?
(assert (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.++ (str.to.re " ") (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a"))))
; /\x2fib2\x2f$/U
(assert (not (str.in.re X (str.to.re "//ib2//U\x0a"))))
(check-sat)
