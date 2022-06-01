(declare-const X String)
; User-Agent\u{3A}\d+Host\u{3A}configINTERNAL\.iniFictionaljspv\u{3B}
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Host:configINTERNAL.iniFictionaljspv;\u{a}")))))
(check-sat)
