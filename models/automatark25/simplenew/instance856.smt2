(declare-const X String)
; ohgdhkzfhdzo\x2fuwpOK\r\nHost\x3A
(assert (not (str.in.re X (str.to.re "ohgdhkzfhdzo/uwpOK\x0d\x0aHost:\x0a"))))
(check-sat)
