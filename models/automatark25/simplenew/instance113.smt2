(declare-const X String)
; from\u{3A}\dwww\.thecommunicator\.net
(assert (str.in_re X (re.++ (str.to_re "from:") (re.range "0" "9") (str.to_re "www.thecommunicator.net\u{a}"))))
(check-sat)
