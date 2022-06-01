(declare-const X String)
; ^(eth[0-9]$)|(^eth[0-9]:[1-9]$)
(assert (str.in_re X (re.union (re.++ (str.to_re "eth") (re.range "0" "9")) (re.++ (str.to_re "\u{a}eth") (re.range "0" "9") (str.to_re ":") (re.range "1" "9")))))
(check-sat)
