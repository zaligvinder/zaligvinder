(declare-const X String)
; are\d+X-Mailer\x3a+\d+v=User-Agent\x3a
(assert (str.in.re X (re.++ (str.to.re "are") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer") (re.+ (str.to.re ":")) (re.+ (re.range "0" "9")) (str.to.re "v=User-Agent:\x0a"))))
; ^((\+)?[1-9]{1,2})?([-\s\.])?((\(\d{1,4}\))|\d{1,4})(([-\s\.])?[0-9]{1,12}){1,2}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) ((_ re.loop 1 2) (re.range "1" "9")))) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (str.to.re "(") ((_ re.loop 1 4) (re.range "0" "9")) (str.to.re ")")) ((_ re.loop 1 4) (re.range "0" "9"))) ((_ re.loop 1 2) (re.++ (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 12) (re.range "0" "9")))) (str.to.re "\x0a")))))
; SpyBuddySubject\x3Astats\x2edrivecleaner\x2ecom
(assert (not (str.in.re X (str.to.re "SpyBuddySubject:stats.drivecleaner.com\x13\x0a"))))
(check-sat)
