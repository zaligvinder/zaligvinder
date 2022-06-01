(declare-const X String)
; ^\\w*$
(assert (not (str.in_re X (re.++ (str.to_re "\u{5c}") (re.* (str.to_re "w")) (str.to_re "\u{a}")))))
(check-sat)
