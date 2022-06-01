(declare-const X String)
; as\u{2E}starware\u{2E}com%3fUser-Agent\u{3A}hostie
(assert (not (str.in_re X (str.to_re "as.starware.com%3fUser-Agent:hostie\u{a}"))))
(check-sat)
