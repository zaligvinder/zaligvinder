(declare-const X String)
; ([0]|[-]?[0]\.[0-9]+)|([-]?([1-9]+\.[0-9]+))|([-]?[1-9]+)
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "1" "9")) (str.to_re ".") (re.+ (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") (re.opt (str.to_re "-")) (re.+ (re.range "1" "9"))) (str.to_re "0") (re.++ (re.opt (str.to_re "-")) (str.to_re "0.") (re.+ (re.range "0" "9"))))))
(check-sat)
