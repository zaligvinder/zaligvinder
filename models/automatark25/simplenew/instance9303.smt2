(declare-const X String)
; ^[A-CEGHJ-PR-TW-Z]{1}[A-CEGHJ-NPR-TW-Z]{1}[0-9]{6}[A-DFM]{0,1}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "A" "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (re.range "J" "P") (re.range "R" "T") (re.range "W" "Z"))) ((_ re.loop 1 1) (re.union (re.range "A" "C") (str.to.re "E") (str.to.re "G") (str.to.re "H") (re.range "J" "N") (str.to.re "P") (re.range "R" "T") (re.range "W" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.union (re.range "A" "D") (str.to.re "F") (str.to.re "M"))) (str.to.re "\x0a"))))
(check-sat)
