(declare-const X String)
; /\x2ejs\x3f[a-zA-Z0-9]{9,20}=Mozilla\x2f/UGi
(assert (not (str.in.re X (re.++ (str.to.re "/.js?") ((_ re.loop 9 20) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "=Mozilla//UGi\x0a")))))
(check-sat)
