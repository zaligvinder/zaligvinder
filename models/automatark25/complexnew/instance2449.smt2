(declare-const X String)
; www\x2Eezula\x2Ecom.*FTP.*User-Agent\x3Acontainsw3whoreport
(assert (not (str.in.re X (re.++ (str.to.re "www.ezula.com") (re.* re.allchar) (str.to.re "FTP") (re.* re.allchar) (str.to.re "User-Agent:containsw3whoreport\x0a")))))
; this is test = this is
(assert (str.in.re X (str.to.re "this is test = this is\x0a")))
; ad\x2Esearchsquire\x2Ecom\s+ocllceclbhs\x2fgth
(assert (str.in.re X (re.++ (str.to.re "ad.searchsquire.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gth\x0a"))))
(check-sat)
