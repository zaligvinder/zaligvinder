(declare-const X String)
; [0](\d{9})|([0](\d{2})( |-)((\d{3}))( |-)(\d{4}))|[0](\d{2})( |-)(\d{7})
(assert (str.in.re X (re.union (re.++ (str.to.re "0") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to.re "0") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "0") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
