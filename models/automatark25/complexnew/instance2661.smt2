(declare-const X String)
; /(A|B|AB|O)[+-]/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "AB") (str.to_re "O")) (re.union (str.to_re "+") (str.to_re "-")) (str.to_re "/\u{a}")))))
; \d\d?\d?\.\d\d?\d?\.\d\d?\d?\.\d\d?\d?
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re ".") (re.range "0" "9") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
