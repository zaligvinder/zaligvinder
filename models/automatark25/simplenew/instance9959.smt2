(declare-const X String)
; http://www.scribd.com/doc/2569355/Geo-Distance-Search-with-MySQL
(assert (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "scribd") re.allchar (str.to.re "com/doc/2569355/Geo-Distance-Search-with-MySQL\x0a"))))
(check-sat)
