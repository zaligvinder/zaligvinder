(declare-const X String)
; (^\d*\.\d{2}$)
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") (re.* (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))
(check-sat)
