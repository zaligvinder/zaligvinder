(declare-const X String)
; nick_name=CIA-Test\s+User-Agent\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddywww\x2Eeasymessage\x2Enet
(assert (not (str.in.re X (re.++ (str.to.re "nick_name=CIA-Test") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Downloadfowclxccdxn/uxwn.ddywww.easymessage.net\x0a")))))
; /\x2eair([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.air") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /filename=[^\n]*\x2eqt/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".qt/i\x0a"))))
(check-sat)
