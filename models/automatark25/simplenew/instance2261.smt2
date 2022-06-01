(declare-const X String)
; LogsHXLogOnlytoolbar\u{2E}i-lookup\u{2E}com
(assert (str.in_re X (str.to_re "LogsHXLogOnlytoolbar.i-lookup.com\u{a}")))
(check-sat)
