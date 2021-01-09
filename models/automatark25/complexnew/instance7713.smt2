(declare-const X String)
; \d{3}-\d{6}
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^((\+[1-9]{1}[0-9]{0,3})?\s?(\([1-9]{1}[0-9]{0,3}\)))?\s?(\b\d{1,9}\b)$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (re.++ (str.to.re "+") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 3) (re.range "0" "9")))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 3) (re.range "0" "9")) (str.to.re ")"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; client\x2Ebaigoo\x2Ecom\s+ised2k
(assert (str.in.re X (re.++ (str.to.re "client.baigoo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ised2k\x0a"))))
; findX-Mailer\x3aUser-Agent\x3Awww\.take5bingo\.comX-Mailer\x3a\x04\x00
(assert (str.in.re X (str.to.re "findX-Mailer:\x13User-Agent:www.take5bingo.com\x1bX-Mailer:\x13\x04\x00\x0a")))
(check-sat)
