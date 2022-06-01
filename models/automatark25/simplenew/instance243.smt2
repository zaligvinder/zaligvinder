(declare-const X String)
; ^[0-9A-Za-z_ ]+(.[jJ][pP][gG]|.[gG][iI][fF])$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " "))) (str.to_re "\u{a}") re.allchar (re.union (re.++ (re.union (str.to_re "j") (str.to_re "J")) (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "g") (str.to_re "G"))) (re.++ (re.union (str.to_re "g") (str.to_re "G")) (re.union (str.to_re "i") (str.to_re "I")) (re.union (str.to_re "f") (str.to_re "F")))))))
(check-sat)
