(declare-const X String)
; User-Agent\x3A\d+Host\x3AconfigINTERNAL\.iniFictionaljspv\x3B
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "Host:configINTERNAL.iniFictionaljspv;\x0a"))))
; Microsoft\w+Toolbar\x22StarLogger\x22
(assert (not (str.in.re X (re.++ (str.to.re "Microsoft") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Toolbar\x22StarLogger\x22\x0a")))))
(check-sat)
