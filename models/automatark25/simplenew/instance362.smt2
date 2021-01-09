(declare-const X String)
; 2\x2E41\d+www\x2Erichfind\x2EcomHost\x3ABeyond
(assert (str.in.re X (re.++ (str.to.re "2.41") (re.+ (re.range "0" "9")) (str.to.re "www.richfind.comHost:Beyond\x0a"))))
(check-sat)
