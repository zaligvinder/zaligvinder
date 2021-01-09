(declare-const X String)
; ".*?"|".*$|'.*?'|'.*$
(assert (str.in.re X (re.union (re.++ (str.to.re "\x22") (re.* re.allchar) (str.to.re "\x22")) (re.++ (str.to.re "\x22") (re.* re.allchar)) (re.++ (str.to.re "'") (re.* re.allchar) (str.to.re "'")) (re.++ (str.to.re "'") (re.* re.allchar) (str.to.re "\x0a")))))
; ^([0-9]{0,2})-([0-9]{0,2})-([0-9]{0,4})$
(assert (not (str.in.re X (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 0 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
