(declare-const X String)
; http[s]?://(www.facebook|[a-zA-Z]{2}-[a-zA-Z]{2}.facebook|facebook)\.com/(events/[0-9]+|[a-zA-Z0-9\.-]+)[/]?$
(assert (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.union (re.++ (str.to.re "www") re.allchar (str.to.re "facebook")) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "-") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) re.allchar (str.to.re "facebook")) (str.to.re "facebook")) (str.to.re ".com/") (re.union (re.++ (str.to.re "events/") (re.+ (re.range "0" "9"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-")))) (re.opt (str.to.re "/")) (str.to.re "\x0a"))))
; www\.iggsey\.com\sX-Mailer\x3aComputeron\x3Acom\x3E2\x2E41
(assert (not (str.in.re X (re.++ (str.to.re "www.iggsey.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "X-Mailer:\x13Computeron:com>2.41\x0a")))))
(check-sat)
