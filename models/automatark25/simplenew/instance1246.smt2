(declare-const X String)
; X-FILTERED-BY-GHOST\u{3a}\d+yxegtd\u{2f}efcwgHost\u{3A}TPSystem
(assert (str.in_re X (re.++ (str.to_re "X-FILTERED-BY-GHOST:") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystem\u{a}"))))
(check-sat)
