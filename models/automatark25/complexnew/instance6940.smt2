(declare-const X String)
; Host\x3A\s+www\x2Einternet-optimizer\x2EcomToolBarKeylogger
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.internet-optimizer.comToolBarKeylogger\x0a")))))
; ([^\w]+)|([^A-Za-z])|(\b[^aeiouy]+\b)|(\b(\w{2})\b)
(assert (not (str.in.re X (re.union (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.+ (re.union (str.to.re "a") (str.to.re "e") (str.to.re "i") (str.to.re "o") (str.to.re "u") (str.to.re "y"))) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")) (re.range "A" "Z") (re.range "a" "z")))))
; sidesearch\.dropspam\.com\s+Strip-Player
(assert (str.in.re X (re.++ (str.to.re "sidesearch.dropspam.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Strip-Player\x1b\x0a"))))
(check-sat)
