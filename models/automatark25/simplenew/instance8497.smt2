(declare-const X String)
; /^"|'+(.*)+"$|'$/
(assert (str.in_re X (re.union (str.to_re "/\u{22}") (re.++ (re.+ (str.to_re "'")) (re.+ (re.* re.allchar)) (str.to_re "\u{22}")) (str.to_re "'/\u{a}"))))
(check-sat)
