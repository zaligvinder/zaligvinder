(declare-const X String)
; from\x3A\dwww\.thecommunicator\.net
(assert (str.in.re X (re.++ (str.to.re "from:") (re.range "0" "9") (str.to.re "www.thecommunicator.net\x0a"))))
; User.*User-Agent\x3A.*ResultATTENTION\x3Ariggiymd\x2fwdhi\.vhi
(assert (not (str.in.re X (re.++ (str.to.re "User") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "ResultATTENTION:riggiymd/wdhi.vhi\x0a")))))
(check-sat)
