(declare-const X String)
; \D
(assert (str.in_re X (re.++ (re.comp (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
