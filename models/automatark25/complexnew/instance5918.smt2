(declare-const X String)
; /filename=[^\n]*\x2epng/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".png/i\x0a")))))
; /^\x2f\d{3}\x2f\d{3}\x2ehtml$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "/") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".html/U\x0a")))))
; /filename=[^\n]*\x2eavi/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".avi/i\x0a"))))
; Everyware.*Email.*Host\x3Astepwww\x2Ekornputers\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Everyware") (re.* re.allchar) (str.to.re "Email") (re.* re.allchar) (str.to.re "Host:stepwww.kornputers.com\x0a")))))
(check-sat)
