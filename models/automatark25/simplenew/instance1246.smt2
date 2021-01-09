(declare-const X String)
; X-FILTERED-BY-GHOST\x3a\d+yxegtd\x2fefcwgHost\x3ATPSystem
(assert (str.in.re X (re.++ (str.to.re "X-FILTERED-BY-GHOST:") (re.+ (re.range "0" "9")) (str.to.re "yxegtd/efcwgHost:TPSystem\x0a"))))
(check-sat)
