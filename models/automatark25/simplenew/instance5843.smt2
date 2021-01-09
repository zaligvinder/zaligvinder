(declare-const X String)
; Toolbar\d+ServerLiteToolbardailywww\x2Ecameup\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.range "0" "9")) (str.to.re "ServerLiteToolbardailywww.cameup.com\x13\x0a")))))
(check-sat)
