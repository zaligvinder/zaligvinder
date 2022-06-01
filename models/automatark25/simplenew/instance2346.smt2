(declare-const X String)
; User-Agent\u{3A}gpstool\u{2e}globaladserver\u{2e}com
(assert (str.in_re X (str.to_re "User-Agent:gpstool.globaladserver.com\u{a}")))
(check-sat)
