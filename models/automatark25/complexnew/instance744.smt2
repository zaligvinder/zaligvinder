(declare-const X String)
; Subject\u{3a}SpywareSpyBuddy
(assert (not (str.in_re X (str.to_re "Subject:SpywareSpyBuddy\u{a}"))))
; [AaEeIiOoUuYy]
(assert (str.in_re X (re.++ (re.union (str.to_re "A") (str.to_re "a") (str.to_re "E") (str.to_re "e") (str.to_re "I") (str.to_re "i") (str.to_re "O") (str.to_re "o") (str.to_re "U") (str.to_re "u") (str.to_re "Y") (str.to_re "y")) (str.to_re "\u{a}"))))
(check-sat)
