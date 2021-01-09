(declare-const X String)
; from\x3A\dwww\.thecommunicator\.net
(assert (str.in.re X (re.++ (str.to.re "from:") (re.range "0" "9") (str.to.re "www.thecommunicator.net\x0a"))))
(check-sat)
