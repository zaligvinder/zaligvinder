(declare-const X String)
; /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
(assert (str.in.re X (re.++ (str.to.re "/") (re.opt (str.to.re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "/;\x0a"))))
; www\x2Eonetoolbar\x2Ecomcommunity
(assert (str.in.re X (str.to.re "www.onetoolbar.comcommunity\x0a")))
; [NS] \d{1,}(\:[0-5]\d){2}.{0,1}\d{0,},[EW] \d{1,}(\:[0-5]\d){2}.{0,1}\d{0,}
(assert (str.in.re X (re.++ (re.union (str.to.re "N") (str.to.re "S")) (str.to.re " ") (re.+ (re.range "0" "9")) ((_ re.loop 2 2) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (re.opt re.allchar) (re.* (re.range "0" "9")) (str.to.re ",") (re.union (str.to.re "E") (str.to.re "W")) (str.to.re " ") (re.+ (re.range "0" "9")) ((_ re.loop 2 2) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (re.opt re.allchar) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
