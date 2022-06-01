(declare-const X String)
; User-Agent\u{3A}Directory
(assert (str.in_re X (str.to_re "User-Agent:Directory\u{a}")))
(check-sat)
