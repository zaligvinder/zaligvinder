(declare-const X String)
; User-Agent\x3A\d+Host\x3AconfigINTERNAL\.iniFictionaljspv\x3B
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "Host:configINTERNAL.iniFictionaljspv;\x0a"))))
(check-sat)
