(declare-const X String)
; ^([a-zA-Z1-9]*)\.(((a|A)(s|S)(p|P)(x|X))|((h|H)(T|t)(m|M)(l|L))|((h|H)(t|T)(M|m))|((a|A)(s|S)(p|P)))
(assert (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "1" "9"))) (str.to.re ".") (re.union (re.++ (re.union (str.to.re "a") (str.to.re "A")) (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "x") (str.to.re "X"))) (re.++ (re.union (str.to.re "h") (str.to.re "H")) (re.union (str.to.re "T") (str.to.re "t")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "l") (str.to.re "L"))) (re.++ (re.union (str.to.re "h") (str.to.re "H")) (re.union (str.to.re "t") (str.to.re "T")) (re.union (str.to.re "M") (str.to.re "m"))) (re.++ (re.union (str.to.re "a") (str.to.re "A")) (re.union (str.to.re "s") (str.to.re "S")) (re.union (str.to.re "p") (str.to.re "P")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ehtc/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".htc/i\x0a")))))
(check-sat)
