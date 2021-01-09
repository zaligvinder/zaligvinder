(declare-const X String)
; Host\x3A\s+Host\x3A\x7croogoo\x7cTestiufilfwulmfi\x2friuf\.lio
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:|roogoo|Testiufilfwulmfi/riuf.lio\x0a")))))
; ^(\d{1,2})(\s?(H|h)?)(:([0-5]\d))?$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "H") (str.to.re "h")))))))
; User-Agent\x3a\soffers\x2Ebullseye-network\x2Ecom\d+FTPsearch\.dropspam\.com
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "offers.bullseye-network.com") (re.+ (re.range "0" "9")) (str.to.re "FTPsearch.dropspam.com\x0a")))))
(check-sat)
