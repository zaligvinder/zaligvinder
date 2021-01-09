(declare-const X String)
; filename=\x22\dDA\s+www\x2Epeer2mail\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "filename=\x22") (re.range "0" "9") (str.to.re "DA") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com\x0a")))))
; /filename=[^\n]*\x2eskm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".skm/i\x0a"))))
; Host\x3Acdpnode=FILESIZE\x3E
(assert (str.in.re X (str.to.re "Host:cdpnode=FILESIZE>\x13\x0a")))
; /filename=[^\n]*\x2ecpe/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cpe/i\x0a"))))
(check-sat)
