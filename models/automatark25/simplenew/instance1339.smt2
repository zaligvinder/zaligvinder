(declare-const X String)
; Supreme\d+Host\x3A\d+yxegtd\x2fefcwgHost\x3ATPSystem
(assert (not (str.in.re X (re.++ (str.to.re "Supreme") (re.+ (re.range "0" "9")) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "yxegtd/efcwgHost:TPSystem\x0a")))))
(check-sat)
