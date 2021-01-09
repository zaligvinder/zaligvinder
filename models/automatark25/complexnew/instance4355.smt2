(declare-const X String)
; www\.actualnames\.com.*www\.klikvipsearch\.com.*\x3C\x2Fchat\x3E
(assert (not (str.in.re X (re.++ (str.to.re "www.actualnames.com") (re.* re.allchar) (str.to.re "www.klikvipsearch.com") (re.* re.allchar) (str.to.re "</chat>\x0a")))))
; \x2Fxml\x2Ftoolbar\x2F
(assert (not (str.in.re X (str.to.re "/xml/toolbar/\x0a"))))
; ^([1-9]|(0|1|2)[0-9]|30)(/|-)([1-9]|1[0-2]|0[1-9])(/|-)(14[0-9]{2})$
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (str.to.re "30")) (re.union (str.to.re "/") (str.to.re "-")) (re.union (re.range "1" "9") (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (str.to.re "0") (re.range "1" "9"))) (re.union (str.to.re "/") (str.to.re "-")) (str.to.re "\x0a14") ((_ re.loop 2 2) (re.range "0" "9"))))))
(check-sat)
