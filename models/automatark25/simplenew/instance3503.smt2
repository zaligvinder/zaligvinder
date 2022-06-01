(declare-const X String)
; ^([1-9]\d*|0)(([.,]\d*[1-9])?)$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (str.to_re "0")) (re.opt (re.++ (re.union (str.to_re ".") (str.to_re ",")) (re.* (re.range "0" "9")) (re.range "1" "9"))) (str.to_re "\u{a}")))))
(check-sat)
