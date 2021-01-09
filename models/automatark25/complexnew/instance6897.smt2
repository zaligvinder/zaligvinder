(declare-const X String)
; /sid=[0-9A-F]{32}/U
(assert (str.in.re X (re.++ (str.to.re "/sid=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/U\x0a"))))
; \x5BStatic\w+www\.iggsey\.comUser-Agent\x3AX-Mailer\x3aComputer
(assert (str.in.re X (re.++ (str.to.re "[Static") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www.iggsey.comUser-Agent:X-Mailer:\x13Computer\x0a"))))
; /filename=[^\n]*\x2esln/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sln/i\x0a"))))
; SpyAgent\s+daosearch\x2Ecom\s+X-Mailer\x3a\s+zmnjgmomgbdz\x2fzzmw\.gzt
(assert (not (str.in.re X (re.++ (str.to.re "SpyAgent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "daosearch.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "zmnjgmomgbdz/zzmw.gzt\x0a")))))
(check-sat)
