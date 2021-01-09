(declare-const X String)
; Logger.*aresflashdownloader\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Logger") (re.* re.allchar) (str.to.re "aresflashdownloader.com\x0a")))))
(check-sat)
