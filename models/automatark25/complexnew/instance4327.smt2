(declare-const X String)
; ^([1-9]|[1-9]\d|100)$
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (str.to.re "100")) (str.to.re "\x0a")))))
; Kontikidownloadfile\x2eorged2kcom\x3EHost\x3AWindows
(assert (str.in.re X (str.to.re "Kontikidownloadfile.orged2kcom>Host:Windows\x0a")))
; /\x2Esum([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.sum") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^#(\d{6})|^#([A-F]{6})|^#([A-F]|[0-9]){6}
(assert (not (str.in.re X (re.++ (str.to.re "#") (re.union ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 6 6) (re.range "A" "F")) (re.++ ((_ re.loop 6 6) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\x0a")))))))
; Contact\d+Host\x3A[^\n\r]*User-Agent\x3AHost\x3aMailHost\x3aMSNLOGOVN
(assert (str.in.re X (re.++ (str.to.re "Contact") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:Host:MailHost:MSNLOGOVN\x0a"))))
(check-sat)
