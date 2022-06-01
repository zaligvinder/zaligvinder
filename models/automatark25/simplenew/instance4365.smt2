(declare-const X String)
; richfind\u{2E}comdcww\u{2E}dmcast\u{2E}com
(assert (str.in_re X (str.to_re "richfind.comdcww.dmcast.com\u{a}")))
(check-sat)
