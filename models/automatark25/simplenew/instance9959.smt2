(declare-const X String)
; http://www.scribd.com/doc/2569355/Geo-Distance-Search-with-MySQL
(assert (str.in_re X (re.++ (str.to_re "http://www") re.allchar (str.to_re "scribd") re.allchar (str.to_re "com/doc/2569355/Geo-Distance-Search-with-MySQL\u{a}"))))
(check-sat)
