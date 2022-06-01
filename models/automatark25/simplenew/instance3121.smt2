(declare-const X String)
; Host\u{3A}Portawww\.thecommunicator\.net
(assert (str.in_re X (str.to_re "Host:Portawww.thecommunicator.net\u{a}")))
(check-sat)
