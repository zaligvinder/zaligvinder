(declare-const X String)
; ^0?.[0]{1,2}[1-9]{1}$|^0?.[1-9]{1}?\d{0,2}$|^(1|1.{1}[0]{1,3})$|^0?.[0]{1}[1-9]{1}\d{1}$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "0")) re.allchar ((_ re.loop 1 2) (str.to.re "0")) ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ (re.opt (str.to.re "0")) re.allchar ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (str.to.re "1") ((_ re.loop 1 1) re.allchar) ((_ re.loop 1 3) (str.to.re "0"))) (re.++ (re.opt (str.to.re "0")) re.allchar ((_ re.loop 1 1) (str.to.re "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "\x0a")))))
; User-Agent\x3A.*Host\x3a\s+www\x2Ewordiq\x2Ecom\s+Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.wordiq.com\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:AlexaOnline%21%21%21\x0a"))))
(check-sat)
