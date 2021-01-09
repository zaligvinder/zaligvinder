(declare-const X String)
; Toolbar\d+ServerLiteToolbardailywww\x2Ecameup\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.range "0" "9")) (str.to.re "ServerLiteToolbardailywww.cameup.com\x13\x0a"))))
; /filename=[^\n]*\x2eplp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".plp/i\x0a"))))
; downloads\x2Emorpheus\x2Ecom\x2Frotation
(assert (not (str.in.re X (str.to.re "downloads.morpheus.com/rotation\x0a"))))
(check-sat)
