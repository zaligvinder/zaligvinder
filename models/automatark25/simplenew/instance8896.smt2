(declare-const X String)
; User.*User-Agent\u{3A}.*ResultATTENTION\u{3A}riggiymd\u{2f}wdhi\.vhi
(assert (not (str.in_re X (re.++ (str.to_re "User") (re.* re.allchar) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "ResultATTENTION:riggiymd/wdhi.vhi\u{a}")))))
(check-sat)
