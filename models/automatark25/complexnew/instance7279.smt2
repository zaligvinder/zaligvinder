(declare-const X String)
; Contact\d+Host\x3A[^\n\r]*User-Agent\x3AHost\x3aMailHost\x3aMSNLOGOVN
(assert (not (str.in.re X (re.++ (str.to.re "Contact") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:Host:MailHost:MSNLOGOVN\x0a")))))
; /filename\s*=\s*[^\r\n]*?\x2epcx[\x22\x27\x3b\s\r\n]/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re ".pcx") (re.union (str.to.re "\x22") (str.to.re "'") (str.to.re ";") (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/i\x0a")))))
; /gate\x2ephp\x3fid=[a-z]{15}/U
(assert (str.in.re X (re.++ (str.to.re "/gate.php?id=") ((_ re.loop 15 15) (re.range "a" "z")) (str.to.re "/U\x0a"))))
; (\"http:\/\/www\.youtube\.com\/v\/\w{11}\&rel\=1\")
(assert (not (str.in.re X (re.++ (str.to.re "\x0a\x22http://www.youtube.com/v/") ((_ re.loop 11 11) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "&rel=1\x22")))))
(check-sat)
