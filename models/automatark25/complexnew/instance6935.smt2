(declare-const X String)
; (\b(1|2|3|4|5|6|7|8|9)?[0-9]\b)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9"))) (re.range "0" "9"))))
; /filename=[^\n]*\x2exlsx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xlsx/i\x0a"))))
; FTP.*www\x2Ewordiq\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "FTP") (re.* re.allchar) (str.to.re "www.wordiq.com\x1b\x0a"))))
; [0][x][0-9a-fA-F]+
(assert (str.in.re X (re.++ (str.to.re "0x") (re.+ (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "\x0a"))))
; e2give\.com.*Redirector\x22.*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "e2give.com") (re.* re.allchar) (str.to.re "Redirector\x22") (re.* re.allchar) (str.to.re "Host:\x0a")))))
(check-sat)
