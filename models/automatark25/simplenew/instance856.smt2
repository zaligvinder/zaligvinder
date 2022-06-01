(declare-const X String)
; ohgdhkzfhdzo\u{2f}uwpOK\r\nHost\u{3A}
(assert (not (str.in_re X (str.to_re "ohgdhkzfhdzo/uwpOK\u{d}\u{a}Host:\u{a}"))))
(check-sat)
