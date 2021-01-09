(declare-const X String)
; ^0$|^0\.{1}(\d{1,2})$|^[1-9]{1}[0-9]*\.?(\d{1,2})$|^[1-9]+[0-9]*$
(assert (str.in.re X (re.union (str.to.re "0") (re.++ (str.to.re "0") ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; ^(([A-Z]{1,2}[0-9]{1,2})|([A-Z]{1,2}[0-9][A-Z]))\s?([0-9][A-Z]{2})$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.range "0" "9") (re.range "A" "Z"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a") (re.range "0" "9") ((_ re.loop 2 2) (re.range "A" "Z")))))
; /filename=[^\n]*\x2ewal/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wal/i\x0a")))))
; www\.iggsey\.com\sX-Mailer\x3a[^\n\r]*on\x3Acom\x3E2\x2E41Client
(assert (not (str.in.re X (re.++ (str.to.re "www.iggsey.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "X-Mailer:\x13") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "on:com>2.41Client\x0a")))))
(check-sat)
