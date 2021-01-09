(declare-const X String)
; (NL-?)?[0-9]{9}B[0-9]{2}
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "NL") (re.opt (str.to.re "-")))) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "B") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; welcome\s+Host\x3A\s+ThistoIpHost\x3Abadurl\x2Egrandstreetinteractive\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "welcome") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ThistoIpHost:badurl.grandstreetinteractive.com\x0a")))))
; Referer\x3Awww\x2Eccnnlc\x2Ecom\x04\x00User-Agent\x3A\x22The
(assert (str.in.re X (str.to.re "Referer:www.ccnnlc.com\x13\x04\x00User-Agent:\x22The\x0a")))
(check-sat)
