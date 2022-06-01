(declare-const X String)
; ^[0]|[0-3]\.(\d?\d?)|[4].[0]$
(assert (str.in_re X (re.union (str.to_re "0") (re.++ (re.range "0" "3") (str.to_re ".") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9"))) (re.++ (str.to_re "4") re.allchar (str.to_re "0\u{a}")))))
(check-sat)
