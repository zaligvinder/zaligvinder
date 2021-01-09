(declare-const X String)
; User.*User-Agent\x3A.*ResultATTENTION\x3Ariggiymd\x2fwdhi\.vhi
(assert (not (str.in.re X (re.++ (str.to.re "User") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "ResultATTENTION:riggiymd/wdhi.vhi\x0a")))))
(check-sat)
