(declare-const X String)
; [0-9]+|-[0-9]+
(assert (not (str.in.re X (re.union (re.+ (re.range "0" "9")) (re.++ (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))))
; /filename=[^\n]*\x2eht3/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ht3/i\x0a")))))
; nick_name=CIA-Test\s+User-Agent\x3A\s+Downloadfowclxccdxn\x2fuxwn\.ddywww\x2Eeasymessage\x2Enet
(assert (not (str.in.re X (re.++ (str.to.re "nick_name=CIA-Test") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Downloadfowclxccdxn/uxwn.ddywww.easymessage.net\x0a")))))
; /filename=[^\n]*\x2eclass/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".class/i\x0a"))))
; /filename=[^\n]*\x2ejpg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpg/i\x0a"))))
(check-sat)
