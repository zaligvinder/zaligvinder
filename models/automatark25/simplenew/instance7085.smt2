(declare-const X String)
; (".+"\s)?<?[a-z\._0-9]+[^\._]@([a-z0-9]+\.)+[a-z0-9]{2,6}>?;?
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "\x22") (re.+ re.allchar) (str.to.re "\x22") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (re.opt (str.to.re "<")) (re.+ (re.union (re.range "a" "z") (str.to.re ".") (str.to.re "_") (re.range "0" "9"))) (re.union (str.to.re ".") (str.to.re "_")) (str.to.re "@") (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "."))) ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt (str.to.re ">")) (re.opt (str.to.re ";")) (str.to.re "\x0a"))))
(check-sat)
