(declare-const X String)
; www\x2Eezula\x2Ecom.*FTP.*User-Agent\x3Acontainsw3whoreport
(assert (str.in.re X (re.++ (str.to.re "www.ezula.com") (re.* re.allchar) (str.to.re "FTP") (re.* re.allchar) (str.to.re "User-Agent:containsw3whoreport\x0a"))))
(check-sat)
