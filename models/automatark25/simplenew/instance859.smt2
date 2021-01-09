(declare-const X String)
; (\d+)([,|.\d])*\d
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (str.to.re ",") (str.to.re "|") (str.to.re ".") (re.range "0" "9"))) (re.range "0" "9") (str.to.re "\x0a")))))
(check-sat)
