(declare-const X String)
; from\u{3A}\dwww\.thecommunicator\.net
(assert (str.in_re X (re.++ (str.to_re "from:") (re.range "0" "9") (str.to_re "www.thecommunicator.net\u{a}"))))
; User.*User-Agent\u{3A}.*ResultATTENTION\u{3A}riggiymd\u{2f}wdhi\.vhi
(assert (not (str.in_re X (re.++ (str.to_re "User") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "ResultATTENTION:riggiymd/wdhi.vhi\u{a}")))))
(check-sat)
