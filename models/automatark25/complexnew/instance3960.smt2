(declare-const X String)
; User-Agent\x3Aetbuviaebe\x2feqv\.bvv
(assert (str.in.re X (str.to.re "User-Agent:etbuviaebe/eqv.bvv\x0a")))
; FTP.*www\x2Ewordiq\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "FTP") (re.* re.allchar) (str.to.re "www.wordiq.com\x1b\x0a")))))
(check-sat)
