(declare-const X String)
; Host\u{3A}\d+Litequick\u{2E}qsrch\u{2E}comaboutHost\u{3A}Computer\u{7D}\u{7B}Sysuptime\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Litequick.qsrch.comaboutHost:Computer}{Sysuptime:\u{a}")))))
(check-sat)
