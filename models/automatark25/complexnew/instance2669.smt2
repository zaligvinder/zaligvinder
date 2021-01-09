(declare-const X String)
; IP.*encoder\d+SAHPORT-User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "IP") (re.* re.allchar) (str.to.re "encoder") (re.+ (re.range "0" "9")) (str.to.re "SAHPORT-User-Agent:\x0a")))))
; 3Awww\x2eurlblaze\x2enetulmxct\x2fmqoycEFErrorHost\x3Ae2give\.com
(assert (not (str.in.re X (str.to.re "3Awww.urlblaze.netulmxct/mqoycEFErrorHost:e2give.com\x0a"))))
; Days\s+HWAE\s+Host\x3APortawww\.thecommunicator\.net
(assert (not (str.in.re X (re.++ (str.to.re "Days") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAE") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Portawww.thecommunicator.net\x0a")))))
(check-sat)
