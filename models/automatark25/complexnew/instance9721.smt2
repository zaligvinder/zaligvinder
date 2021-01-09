(declare-const X String)
; FTP.*www\x2Ewordiq\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "FTP") (re.* re.allchar) (str.to.re "www.wordiq.com\x1b\x0a")))))
; body=\x2521\x2521\x2521Optix\s+Host\x3a
(assert (not (str.in.re X (re.++ (str.to.re "body=%21%21%21Optix\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a")))))
(check-sat)
