(declare-const X String)
; name.matches("a-z")
(assert (str.in_re X (re.++ (str.to_re "name") re.allchar (str.to_re "matches\u{22}a-z\u{22}\u{a}"))))
(check-sat)
