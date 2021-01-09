(declare-const X String)
; connection\sHost\x3aSubject\x3A\.bmp
(assert (not (str.in.re X (re.++ (str.to.re "connection") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:Subject:.bmp\x0a")))))
; LOG\w+PARSER\d+scn\x2emystoretoolbar\x2ecom
(assert (str.in.re X (re.++ (str.to.re "LOG") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "PARSER") (re.+ (re.range "0" "9")) (str.to.re "scn.mystoretoolbar.com\x13\x0a"))))
; Serverulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (not (str.in.re X (str.to.re "Serverulmxct/mqoycWinSession/client/*PORT1*\x0a"))))
; /filename=[^\n]*\x2eani/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ani/i\x0a")))))
(check-sat)
