(declare-const X String)
; http://www.mail-password-recovery.com/
(assert (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "mail-password-recovery") re.allchar (str.to.re "com/\x0a"))))
; User-Agent\x3A\s+Robert
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Robert\x0a"))))
; \x2Fcgi\x2Flogurl\.cgi\s+Host\x3AUser-Agent\x3ASurveillancecom
(assert (not (str.in.re X (re.++ (str.to.re "/cgi/logurl.cgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:User-Agent:Surveillance\x13com\x0a")))))
; [0-9]+
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; /\/pdfx\.html$/U
(assert (str.in.re X (str.to.re "//pdfx.html/U\x0a")))
(check-sat)
