(declare-const X String)
; eveocczmthmmq\x2fomzlHello\x2E\x2Fasp\x2Foffers\.asp\?
(assert (not (str.in.re X (str.to.re "eveocczmthmmq/omzlHello./asp/offers.asp?\x0a"))))
; 5[12345]\d{14}
(assert (str.in.re X (re.++ (str.to.re "5") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "5")) ((_ re.loop 14 14) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^([01]\d|2[0123])([0-5]\d){2}([0-99]\d)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3")))) ((_ re.loop 2 2) (re.++ (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a") (re.union (re.range "0" "9") (str.to.re "9")) (re.range "0" "9")))))
; /filename=[^\n]*\x2esmil/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smil/i\x0a")))))
; ^5[1-5][0-9]{14}$
(assert (not (str.in.re X (re.++ (str.to.re "5") (re.range "1" "5") ((_ re.loop 14 14) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
