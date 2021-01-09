(declare-const X String)
; /^[A-Z]{3}[G|A|F|C|T|H|P]{1}[A-Z]{1}\d{4}[A-Z]{1}$/;
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 3 3) (re.range "A" "Z")) ((_ re.loop 1 1) (re.union (str.to.re "G") (str.to.re "|") (str.to.re "A") (str.to.re "F") (str.to.re "C") (str.to.re "T") (str.to.re "H") (str.to.re "P"))) ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z")) (str.to.re "/;\x0a"))))
(check-sat)
