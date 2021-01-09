(declare-const X String)
; ^(\S+\.{1})(\S+\.{1})*([^\s\.]+\s*)$
(assert (not (str.in.re X (re.++ (re.* (re.++ (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) ((_ re.loop 1 1) (str.to.re ".")))) (str.to.re "\x0a") (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) ((_ re.loop 1 1) (str.to.re ".")) (re.+ (re.union (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
; www\x2EZSearchResults\x2Ecom\dBar.*sponsor2\.ucmore\.com
(assert (not (str.in.re X (re.++ (str.to.re "www.ZSearchResults.com\x13") (re.range "0" "9") (str.to.re "Bar") (re.* re.allchar) (str.to.re "sponsor2.ucmore.com\x0a")))))
; www\x2Emirarsearch\x2Ecom
(assert (str.in.re X (str.to.re "www.mirarsearch.com\x0a")))
; /filename=[^\n]*\x2emp4/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mp4/i\x0a"))))
; www\.iggsey\.com\sX-Mailer\x3a[^\n\r]*on\x3Acom\x3E2\x2E41Client
(assert (str.in.re X (re.++ (str.to.re "www.iggsey.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "X-Mailer:\x13") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "on:com>2.41Client\x0a"))))
(check-sat)
