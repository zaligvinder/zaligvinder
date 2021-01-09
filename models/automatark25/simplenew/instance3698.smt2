(declare-const X String)
; ^([a-zA-Z].*|[1-9].*)\.(((j|J)(p|P)(g|G))|((g|G)(i|I)(f|F)))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* re.allchar)) (re.++ (re.range "1" "9") (re.* re.allchar))) (str.to.re ".") (re.union (re.++ (re.union (str.to.re "j") (str.to.re "J")) (re.union (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "g") (str.to.re "G"))) (re.++ (re.union (str.to.re "g") (str.to.re "G")) (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "f") (str.to.re "F")))) (str.to.re "\x0a"))))
(check-sat)
