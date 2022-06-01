(declare-const X String)
; ^[^<^>]*$
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re "<") (str.to_re "^") (str.to_re ">"))) (str.to_re "\u{a}"))))
(check-sat)
