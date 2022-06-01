(declare-const X String)
; ^(\d)(\.)(\d)+\s(x)\s(10)(e|E|\^)(-)?(\d)+$
(assert (str.in_re X (re.++ (re.range "0" "9") (str.to_re ".") (re.+ (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "x") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "10") (re.union (str.to_re "e") (str.to_re "E") (str.to_re "^")) (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
