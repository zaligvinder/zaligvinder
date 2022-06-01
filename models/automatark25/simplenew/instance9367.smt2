(declare-const X String)
; ('((\\.)|[^\\'])*')
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}'") (re.* (re.union (re.++ (str.to_re "\u{5c}") re.allchar) (str.to_re "\u{5c}") (str.to_re "'"))) (str.to_re "'")))))
(check-sat)
