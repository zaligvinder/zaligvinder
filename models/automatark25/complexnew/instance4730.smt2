(declare-const X String)
; /filename=[^\n]*\x2epfm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pfm/i\x0a")))))
; ^([34|37]{2})([0-9]{13})$
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (str.to.re "3") (str.to.re "4") (str.to.re "|") (str.to.re "7"))) ((_ re.loop 13 13) (re.range "0" "9")) (str.to.re "\x0a")))))
; www\.iggsey\.com\sX-Mailer\x3aComputeron\x3Acom\x3E2\x2E41
(assert (not (str.in.re X (re.++ (str.to.re "www.iggsey.com") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "X-Mailer:\x13Computeron:com>2.41\x0a")))))
(check-sat)
