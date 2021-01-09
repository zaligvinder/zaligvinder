(declare-const X String)
; IPUSER-Host\x3AUser-Agent\x3A\x2Fsearchfast\x2F
(assert (not (str.in.re X (str.to.re "IPUSER-Host:User-Agent:/searchfast/\x0a"))))
; ('.*$|Rem((\t| ).*$|$)|"(.|"")*?")
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "'") (re.* re.allchar)) (re.++ (str.to.re "Rem") (re.union (str.to.re "\x09") (str.to.re " ")) (re.* re.allchar)) (re.++ (str.to.re "\x22") (re.* (re.union re.allchar (str.to.re "\x22\x22"))) (str.to.re "\x22"))) (str.to.re "\x0a")))))
; FTP\s+\x2FNFO\x2CRegistered\s+Server\s+www\x2Einternet-optimizer\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "FTP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/NFO,Registered") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Server") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.internet-optimizer.com\x0a"))))
(check-sat)
