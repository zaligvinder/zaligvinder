(declare-const X String)
; ^(\(\d{3}\)[- ]?|\d{3}[- ])?\d{3}[- ]\d{4}$
(assert (not (str.in_re X (re.++ (re.opt (re.union (re.++ (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")") (re.opt (re.union (str.to_re "-") (str.to_re " ")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re " "))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re " ")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; asdbiz\u{2E}biz\s+informationHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "asdbiz.biz") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "informationHost:\u{a}")))))
; /^\d{0,10}_passes_\d{1,10}\.xm/iR
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 0 10) (re.range "0" "9")) (str.to_re "_passes_") ((_ re.loop 1 10) (re.range "0" "9")) (str.to_re ".xm/iR\u{a}")))))
(check-sat)
