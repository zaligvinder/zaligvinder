(declare-const X String)
; /filename=[^\n]*\x2emax/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".max/i\x0a")))))
; GmbH\d+Host\x3A\w+adblock\x2Elinkz\x2EcomUser-Agent\x3Aemail
(assert (not (str.in.re X (re.++ (str.to.re "GmbH") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "adblock.linkz.comUser-Agent:email\x0a")))))
; ^\d+$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; /[^\x20-\x7e\r\n]{3}/P
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 3 3) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a")))))
(check-sat)
