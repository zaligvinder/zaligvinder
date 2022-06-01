(declare-const X String)
; 3A\d+Host\u{3A}HWAEUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "3A") (re.+ (re.range "0" "9")) (str.to_re "Host:HWAEUser-Agent:\u{a}"))))
(check-sat)
