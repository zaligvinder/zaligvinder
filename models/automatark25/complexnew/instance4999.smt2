(declare-const X String)
; comLOGUser-Agent\x3Aistsvcwww\x2Eoemji\x2EcomSystemSleuth
(assert (str.in.re X (str.to.re "comLOGUser-Agent:istsvcwww.oemji.comSystemSleuth\x13\x0a")))
; /filename=[^\n]*\x2emht/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mht/i\x0a"))))
; User-Agent\x3A\s+community\d+
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "community") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; \x5D\x2520\x5BPort_X-Mailer\x3AX-Mailer\x3awww\.actualnames\.comwebsearch\.getmirar\.com
(assert (not (str.in.re X (str.to.re "]%20[Port_X-Mailer:\x13X-Mailer:\x13www.actualnames.comwebsearch.getmirar.com\x0a"))))
; \b(0?[1-9]|1[0-2])(\/)(0?[1-9]|1[0-9]|2[0-9]|3[0-1])(\/)(0[0-8])\b
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/\x0a0") (re.range "0" "8"))))
(check-sat)
