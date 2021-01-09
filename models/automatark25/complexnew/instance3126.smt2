(declare-const X String)
; ^([0]?[1-9]|[1][0-2]|[2][0-3]):([0-5][0-9]|[1-9])$
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (str.to.re "2") (re.range "0" "3"))) (str.to.re ":") (re.union (re.++ (re.range "0" "5") (re.range "0" "9")) (re.range "1" "9")) (str.to.re "\x0a"))))
; ^\d{1,2}((,)|(,25)|(,50)|(,5)|(,75)|(,0)|(,00))?$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (str.to.re ",") (str.to.re ",25") (str.to.re ",50") (str.to.re ",5") (str.to.re ",75") (str.to.re ",0") (str.to.re ",00"))) (str.to.re "\x0a")))))
; ZC-Bridge\s+www\x2Ewebcruiser\x2Ecc\x22StealthReferer\x3AContact
(assert (str.in.re X (re.++ (str.to.re "ZC-Bridge") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.webcruiser.cc\x22StealthReferer:Contact\x0a"))))
(check-sat)
