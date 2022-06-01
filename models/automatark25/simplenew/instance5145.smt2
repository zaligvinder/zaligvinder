(declare-const X String)
; ^[0-9]+[NnSs] [0-9]+[WwEe]$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.union (str.to_re "N") (str.to_re "n") (str.to_re "S") (str.to_re "s")) (str.to_re " ") (re.+ (re.range "0" "9")) (re.union (str.to_re "W") (str.to_re "w") (str.to_re "E") (str.to_re "e")) (str.to_re "\u{a}")))))
(check-sat)
