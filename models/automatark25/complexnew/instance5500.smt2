(declare-const X String)
; Toolbar\d+ServerLiteToolbardailywww\x2Ecameup\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.range "0" "9")) (str.to.re "ServerLiteToolbardailywww.cameup.com\x13\x0a")))))
; ^(01)[0-9]{8}
(assert (str.in.re X (re.++ (str.to.re "01") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eses/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ses/i\x0a"))))
(check-sat)
