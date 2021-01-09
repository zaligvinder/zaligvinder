(declare-const X String)
; ^(eth[0-9]$)|(^eth[0-9]:[1-9]$)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "eth") (re.range "0" "9")) (re.++ (str.to.re "\x0aeth") (re.range "0" "9") (str.to.re ":") (re.range "1" "9"))))))
(check-sat)
