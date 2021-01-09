(declare-const X String)
; User-Agent\x3a\s+www\x2Einternet-optimizer\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.internet-optimizer.com\x0a")))))
; 666Host\x3aWEBCAM-Host\x3a
(assert (not (str.in.re X (str.to.re "666Host:WEBCAM-Host:\x0a"))))
(check-sat)
