(declare-const X String)
; from\u{3A}Host\u{3a}www\.thecommunicator\.net
(assert (not (str.in_re X (str.to_re "from:Host:www.thecommunicator.net\u{a}"))))
(check-sat)
