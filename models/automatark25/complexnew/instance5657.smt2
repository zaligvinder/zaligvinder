(declare-const X String)
; /[^\x0d\x0a\x09\x20-\x7e]{4}/P
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 4 4) (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re "\x09") (re.range " " "~"))) (str.to.re "/P\x0a"))))
; /\)\r\nHost\x3a\x20[a-z\d\x2e\x2d]{6,32}\r\nCache\x2dControl\x3a\x20no\x2dcache\r\n\r\n$/
(assert (not (str.in.re X (re.++ (str.to.re "/)\x0d\x0aHost: ") ((_ re.loop 6 32) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re "\x0d\x0aCache-Control: no-cache\x0d\x0a\x0d\x0a/\x0a")))))
; nick_name=CIA-Test\d+url=http\x3A\d+\x2FNFO\x2CRegistered\x28BDLL\x29
(assert (str.in.re X (re.++ (str.to.re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to.re "url=http:\x1b") (re.+ (re.range "0" "9")) (str.to.re "/NFO,Registered(BDLL)\x13\x0a"))))
; /filename=[^\n]*\x2eogv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ogv/i\x0a")))))
(check-sat)
