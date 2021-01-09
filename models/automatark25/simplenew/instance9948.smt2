(declare-const X String)
; ^([a-z|A-Z]{1}[0-9]{3})[-]([0-9]{3})[-]([0-9]{2})[-]([0-9]{3})[-]([0-9]{1})
(assert (str.in.re X (re.++ (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a") ((_ re.loop 1 1) (re.union (re.range "a" "z") (str.to.re "|") (re.range "A" "Z"))) ((_ re.loop 3 3) (re.range "0" "9")))))
(check-sat)
