(declare-const X String)
; IP.*encoder\d+SAHPORT-User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "IP") (re.* re.allchar) (str.to.re "encoder") (re.+ (re.range "0" "9")) (str.to.re "SAHPORT-User-Agent:\x0a")))))
; \x28BDLL\x29Googledll\x3F
(assert (not (str.in.re X (str.to.re "(BDLL)\x13Googledll?\x0a"))))
; (\<!--\s*.*?((--\>)|$))
(assert (not (str.in.re X (re.++ (str.to.re "\x0a<!--") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar) (str.to.re "-->")))))
; Host\x3A1\-extreme\x2EbizX-Mailer\x3awww\x2Ewebcruiser\x2Ecc
(assert (not (str.in.re X (str.to.re "Host:1-extreme.bizX-Mailer:\x13www.webcruiser.cc\x0a"))))
(check-sat)
