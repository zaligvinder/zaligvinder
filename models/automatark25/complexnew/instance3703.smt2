(declare-const X String)
; ([1,2].)(\d{2}.)(\d{2}.)(\d{2}.)(\d{3}.)(\d{3}.)(\d{2})
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a") (re.union (str.to.re "1") (str.to.re ",") (str.to.re "2")) re.allchar ((_ re.loop 2 2) (re.range "0" "9")) re.allchar ((_ re.loop 2 2) (re.range "0" "9")) re.allchar ((_ re.loop 2 2) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) re.allchar ((_ re.loop 3 3) (re.range "0" "9")) re.allchar))))
; ^\d+\*\d+\*\d+$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re "*") (re.+ (re.range "0" "9")) (str.to.re "*") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; User-Agent\x3A.*Host\x3a\s+www\x2Ewordiq\x2Ecom\s+Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.wordiq.com\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:AlexaOnline%21%21%21\x0a"))))
(check-sat)
