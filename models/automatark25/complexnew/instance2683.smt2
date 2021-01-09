(declare-const X String)
; ^(\(\d{3}\)[- ]?|\d{3}[- ])?\d{3}[- ]\d{4}$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") (re.opt (re.union (str.to.re "-") (str.to.re " ")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " "))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; asdbiz\x2Ebiz\s+informationHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "asdbiz.biz") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "informationHost:\x0a")))))
; /^\d{0,10}_passes_\d{1,10}\.xm/iR
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 0 10) (re.range "0" "9")) (str.to.re "_passes_") ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re ".xm/iR\x0a")))))
(check-sat)
