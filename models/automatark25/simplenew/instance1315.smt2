(declare-const X String)
; Supreme\d+Host\u{3A}\d+yxegtd\u{2f}efcwgHost\u{3A}TPSystem
(assert (not (str.in_re X (re.++ (str.to_re "Supreme") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystem\u{a}")))))
(check-sat)
