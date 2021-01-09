(declare-const X String)
; Subject\x3A\s+www\x2eproventactics\x2ecomdownloads\x2Emorpheus\x2Ecom\x2Frotation
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.proventactics.comdownloads.morpheus.com/rotation\x0a")))))
; (W(5|6)[D]?\-\d{9})|(W1\-\d{9}(\-\d{2})?)
(assert (str.in.re X (re.union (re.++ (str.to.re "W") (re.union (str.to.re "5") (str.to.re "6")) (re.opt (str.to.re "D")) (str.to.re "-") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to.re "\x0aW1-") ((_ re.loop 9 9) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))))))))
; ^([1][0-9]|[0-9])[1-9]{2}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "9")) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "\x0a")))))
(check-sat)
