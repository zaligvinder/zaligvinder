(declare-const X String)
; /^\x2f[A-Z\d]{83}\x3d[A-Z\d]{10}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 83 83) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 10 10) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
; [ \t]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "\x0a")))))
; search\x2eimesh\x2ecom\s+WatchDogupwww\.klikvipsearch\.com
(assert (str.in.re X (re.++ (str.to.re "search.imesh.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WatchDogupwww.klikvipsearch.com\x0a"))))
; eveocczmthmmq\x2fomzlHello\x2E\x2Fasp\x2Foffers\.asp\?
(assert (str.in.re X (str.to.re "eveocczmthmmq/omzlHello./asp/offers.asp?\x0a")))
(check-sat)
