(declare-const X String)
; ^(\[a-zA-Z '\]+)$
(assert (str.in_re X (re.++ (str.to_re "\u{a}[a-zA-Z '") (re.+ (str.to_re "]")))))
(check-sat)
