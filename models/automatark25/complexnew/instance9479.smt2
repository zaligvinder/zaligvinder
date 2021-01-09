(declare-const X String)
; \x2FrssaboutinformationHost\x3A\x2Fezsbu=DISKHost\x3Aad\x2Emokead\x2Ecom
(assert (not (str.in.re X (str.to.re "/rssaboutinformationHost:/ezsbu=DISKHost:ad.mokead.com\x0a"))))
; (([a-z']?[a-z' ]*)|([a-z][\.])?([a-z][\.]))
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (re.union (re.range "a" "z") (str.to.re "'"))) (re.* (re.union (re.range "a" "z") (str.to.re "'") (str.to.re " ")))) (re.++ (re.opt (re.++ (re.range "a" "z") (str.to.re "."))) (re.range "a" "z") (str.to.re "."))) (str.to.re "\x0a"))))
; ^[-+]?\d+(\.\d)?\d*$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; 195\.225\.\<title\>Actual
(assert (not (str.in.re X (str.to.re "195.225.<title>Actual\x0a"))))
(check-sat)
