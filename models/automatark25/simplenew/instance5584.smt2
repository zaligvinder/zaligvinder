(declare-const X String)
; \u{2F}pagead\u{2F}ads\?\d+ocllceclbhs\u{2f}gth
(assert (not (str.in_re X (re.++ (str.to_re "/pagead/ads?") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth\u{a}")))))
(check-sat)
