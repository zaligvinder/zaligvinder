(declare-const X String)
; Host\x3A\dKeylogger.*Onetrustyfiles\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.range "0" "9") (str.to.re "Keylogger") (re.* re.allchar) (str.to.re "Onetrustyfiles.com\x0a"))))
; /i=[a-zA-Z0-9$~]{40}/U
(assert (str.in.re X (re.++ (str.to.re "/i=") ((_ re.loop 40 40) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "$") (str.to.re "~"))) (str.to.re "/U\x0a"))))
; /filename=[^\n]*\x2empeg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mpeg/i\x0a"))))
; /^\x2F\d{10}$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "/U\x0a"))))
(check-sat)
