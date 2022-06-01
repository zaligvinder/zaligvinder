(declare-const X String)
; User-Agent\u{3A}Filtered
(assert (not (str.in_re X (str.to_re "User-Agent:Filtered\u{a}"))))
(check-sat)
