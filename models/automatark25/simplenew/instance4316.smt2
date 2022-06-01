(declare-const X String)
; /^\u{2}\d+ cfA/smi
(assert (not (str.in_re X (re.++ (str.to_re "/\u{2}") (re.+ (re.range "0" "9")) (str.to_re " cfA/smi\u{a}")))))
(check-sat)
