(declare-const X String)
; ^([01][0-9][0-9]|2[0-4][0-9]|25[0-5].[01][0-9][0-9]|2[0-4][0-9]|25[0-5].[01][0-9][0-9]|2[0-4][0-9]|25[0-5].[01][0-9][0-9]|2[0-4][0-9]|25[0-5])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5") re.allchar (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5") re.allchar (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5") re.allchar (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "\x0a"))))
; eveocczmthmmq\x2fomzlHello\x2E\x2Fasp\x2Foffers\.asp\?
(assert (not (str.in.re X (str.to.re "eveocczmthmmq/omzlHello./asp/offers.asp?\x0a"))))
(check-sat)
