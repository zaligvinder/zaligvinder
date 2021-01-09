(declare-const X String)
; 3AUser-Agent\x3AFROM\x3ARemoteqlqqlbojvii\x2fgtHost\x3A
(assert (str.in.re X (str.to.re "3AUser-Agent:FROM:Remoteqlqqlbojvii/gtHost:\x0a")))
; e2give\.com\s+adfsgecoiwnf\x23\x23\x23\x23User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "e2give.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1b####User-Agent:\x0a")))))
; /filename\=\d+\.swf/H
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.+ (re.range "0" "9")) (str.to.re ".swf/H\x0a")))))
(check-sat)
