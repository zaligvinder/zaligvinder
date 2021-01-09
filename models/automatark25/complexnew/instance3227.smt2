(declare-const X String)
; function.*WEBCAM-.*User-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "function") (re.* re.allchar) (str.to.re "WEBCAM-") (re.* re.allchar) (str.to.re "User-Agent:\x0a"))))
; Days\s+HWAE\s+Host\x3APortawww\.thecommunicator\.net
(assert (not (str.in.re X (re.++ (str.to.re "Days") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAE") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Portawww.thecommunicator.net\x0a")))))
; MyBrowserSbAtsHost\x3A
(assert (str.in.re X (str.to.re "MyBrowserSbAtsHost:\x0a")))
; ^[a-zA-Z0-9\s]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; xpsp2-\s+spyblpatHost\x3Ais\x2EphpBarFrom\x3A
(assert (not (str.in.re X (re.++ (str.to.re "xpsp2-") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblpatHost:is.phpBarFrom:\x0a")))))
(check-sat)
