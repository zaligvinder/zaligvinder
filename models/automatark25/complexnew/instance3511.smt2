(declare-const X String)
; ^[0-9]{6}
(assert (not (str.in.re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a")))))
; GREATDriplineisUser-Agent\x3Alogs===========\x3E
(assert (not (str.in.re X (str.to.re "GREATDriplineisUser-Agent:logs===========>\x0a"))))
; (CZ-?)?[0-9]{8,10}
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "CZ") (re.opt (str.to.re "-")))) ((_ re.loop 8 10) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^((2[0-5][0-5]|1[\d][\d]|[\d][\d]|[\d])\.){3}(2[0-5][0-5]|1[\d][\d]|[\d][\d]|[\d])$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to.re "2") (re.range "0" "5") (re.range "0" "5")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9")) (re.range "0" "9")) (str.to.re "."))) (re.union (re.++ (str.to.re "2") (re.range "0" "5") (re.range "0" "5")) (re.++ (str.to.re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9")) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^([1-9]{1}[0-9]{3}[,]?)*([1-9]{1}[0-9]{3})$
(assert (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ",")))) (str.to.re "\x0a") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")))))
(check-sat)
