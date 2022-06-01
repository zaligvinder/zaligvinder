(declare-const X String)
; ('.*$|Rem((\t| ).*$|$)|"(.|"")*?")
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "'") (re.* re.allchar)) (re.++ (str.to_re "Rem") (re.union (str.to_re "\u{9}") (str.to_re " ")) (re.* re.allchar)) (re.++ (str.to_re "\u{22}") (re.* (re.union re.allchar (str.to_re "\u{22}\u{22}"))) (str.to_re "\u{22}"))) (str.to_re "\u{a}")))))
(check-sat)
