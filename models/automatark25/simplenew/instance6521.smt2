(declare-const X String)
; ^UA-\d+-\d+$
(assert (not (str.in_re X (re.++ (str.to_re "UA-") (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
