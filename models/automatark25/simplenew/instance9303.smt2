(declare-const X String)
; ^[A-CEGHJ-PR-TW-Z]{1}[A-CEGHJ-NPR-TW-Z]{1}[0-9]{6}[A-DFM]{0,1}$
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (re.range "A" "C") (str.to_re "E") (str.to_re "G") (str.to_re "H") (re.range "J" "P") (re.range "R" "T") (re.range "W" "Z"))) ((_ re.loop 1 1) (re.union (re.range "A" "C") (str.to_re "E") (str.to_re "G") (str.to_re "H") (re.range "J" "N") (str.to_re "P") (re.range "R" "T") (re.range "W" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")) (re.opt (re.union (re.range "A" "D") (str.to_re "F") (str.to_re "M"))) (str.to_re "\u{a}"))))
(check-sat)
