(declare-const X String)
; horoscope2Cookie\x3adatATTENTION\x3AKontiki
(assert (not (str.in.re X (str.to.re "horoscope2Cookie:datATTENTION:Kontiki\x0a"))))
; www\x2Ecameup\x2Ecom\s+spyblini\x2Eini
(assert (not (str.in.re X (re.++ (str.to.re "www.cameup.com\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblini.ini\x0a")))))
; ^(\+{1,2}?([0-9]{2,4}|\([0-9]{2,4}\))?(-|\s)?)?[0-9]{2,3}(-|\s)?[0-9\-]{5,10}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ ((_ re.loop 1 2) (str.to.re "+")) (re.opt (re.union ((_ re.loop 2 4) (re.range "0" "9")) (re.++ (str.to.re "(") ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re ")")))) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) ((_ re.loop 2 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 5 10) (re.union (re.range "0" "9") (str.to.re "-"))) (str.to.re "\x0a")))))
(check-sat)
