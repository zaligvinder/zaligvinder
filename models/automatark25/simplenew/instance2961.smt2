(declare-const X String)
; ('{2})*([^'\r\n]*)('{2})*([^'\r\n]*)('{2})*
(assert (str.in_re X (re.++ (re.* ((_ re.loop 2 2) (str.to_re "'"))) (re.* (re.union (str.to_re "'") (str.to_re "\u{d}") (str.to_re "\u{a}"))) (re.* ((_ re.loop 2 2) (str.to_re "'"))) (re.* (re.union (str.to_re "'") (str.to_re "\u{d}") (str.to_re "\u{a}"))) (re.* ((_ re.loop 2 2) (str.to_re "'"))) (str.to_re "\u{a}"))))
(check-sat)
