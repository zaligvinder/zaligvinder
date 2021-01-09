(declare-const X String)
; ^([1-9]\d*|0)(([.,]\d*[1-9])?)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (str.to.re "0")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re ",")) (re.* (re.range "0" "9")) (re.range "1" "9"))) (str.to.re "\x0a")))))
(check-sat)
