(declare-const X String)
; offers\x2Ebullseye-network\x2Ecom\s+news[^\n\r]*WatcherUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "offers.bullseye-network.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "news") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "WatcherUser-Agent:\x0a"))))
; [\x80-\xFF]
(assert (not (str.in.re X (re.++ (re.range "\x80" "\xff") (str.to.re "\x0a")))))
; ^([A-Z]{2}\s?(\d{2})?(-)?([A-Z]{1}|\d{1})?([A-Z]{1}|\d{1})?( )?(\d{4}))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.range "A" "Z")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (str.to.re "-")) (re.opt (re.union ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.opt (re.union ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.opt (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9"))))))
; \x7croogoo\x7cTestiufilfwulmfi\x2friuf\.lioHeaders
(assert (str.in.re X (str.to.re "|roogoo|Testiufilfwulmfi/riuf.lioHeaders\x0a")))
(check-sat)
