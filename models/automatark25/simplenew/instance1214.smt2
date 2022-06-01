(declare-const X String)
; Last.*?(\d+.?\d*)
(assert (str.in_re X (re.++ (str.to_re "Last") (re.* re.allchar) (str.to_re "\u{a}") (re.+ (re.range "0" "9")) (re.opt re.allchar) (re.* (re.range "0" "9")))))
(check-sat)
