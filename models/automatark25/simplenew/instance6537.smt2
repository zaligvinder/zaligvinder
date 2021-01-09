(declare-const X String)
; from\x3AHost\x3awww\.thecommunicator\.net
(assert (not (str.in.re X (str.to.re "from:Host:www.thecommunicator.net\x0a"))))
(check-sat)
