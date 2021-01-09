(declare-const X String)
; ^[0]|[0-3]\.(\d?\d?)|[4].[0]$
(assert (not (str.in.re X (re.union (str.to.re "0") (re.++ (re.range "0" "3") (str.to.re ".") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9"))) (re.++ (str.to.re "4") re.allchar (str.to.re "0\x0a"))))))
(check-sat)
