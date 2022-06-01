(declare-const X String)
; \u{7D}\u{7B}Sysuptime\u{3A}\d+\u{2F}communicatortb
(assert (str.in_re X (re.++ (str.to_re "}{Sysuptime:") (re.+ (re.range "0" "9")) (str.to_re "/communicatortb\u{a}"))))
(check-sat)
