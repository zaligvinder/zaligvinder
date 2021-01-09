(declare-const X String)
; /^\/[a-f0-9]{32}\/[a-z]{1,15}-[a-z]{1,15}\.php/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") ((_ re.loop 1 15) (re.range "a" "z")) (str.to.re "-") ((_ re.loop 1 15) (re.range "a" "z")) (str.to.re ".php/U\x0a")))))
; nick_name=CIA-Test\s+User-Agent\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddywww\x2Eeasymessage\x2Enet
(assert (str.in.re X (re.++ (str.to.re "nick_name=CIA-Test") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Downloadfowclxccdxn/uxwn.ddywww.easymessage.net\x0a"))))
(check-sat)
