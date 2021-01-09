(declare-const X String)
; stats\x2edrivecleaner\x2ecomExciteasdbiz\x2Ebiz
(assert (str.in.re X (str.to.re "stats.drivecleaner.com\x13Exciteasdbiz.biz\x0a")))
; www\x2Epurityscan\x2Ecom\s+from\.myway\.comToolbarUI2
(assert (str.in.re X (re.++ (str.to.re "www.purityscan.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "from.myway.com\x1bToolbarUI2\x0a"))))
; ^(([1-9]{1})|([0-1][0-9])|([1-2][0-3])):([0-5][0-9])$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.range "0" "3"))) (str.to.re ":\x0a") (re.range "0" "5") (re.range "0" "9")))))
(check-sat)
