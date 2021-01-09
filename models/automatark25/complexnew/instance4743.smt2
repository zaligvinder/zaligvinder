(declare-const X String)
; Kontiki\s+resultsmaster\x2Ecom\x7croogoo\x7c
(assert (not (str.in.re X (re.++ (str.to.re "Kontiki") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "resultsmaster.com\x13|roogoo|\x0a")))))
; ^((\d{0,1}[0-9](\.\d{0,1}[0-9])?)|(100))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.opt (re.range "0" "9")) (re.range "0" "9")))) (str.to.re "100")) (str.to.re "\x0a")))))
; ZC-BridgeHost\x3ASubject\x3aas\x2Estarware\x2Ecom
(assert (not (str.in.re X (str.to.re "ZC-BridgeHost:Subject:as.starware.com\x0a"))))
; /\x253D$/Im
(assert (str.in.re X (str.to.re "/%3D/Im\x0a")))
; User-Agent\x3A.*Host\x3a\s+www\x2Ewordiq\x2Ecom\s+Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.wordiq.com\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:AlexaOnline%21%21%21\x0a")))))
(check-sat)
