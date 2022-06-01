(declare-const X String)
; User-Agent\u{3A}\d+Host\u{3A}configINTERNAL\.iniFictionaljspv\u{3B}
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Host:configINTERNAL.iniFictionaljspv;\u{a}"))))
; Microsoft\w+Toolbar\u{22}StarLogger\u{22}
(assert (not (str.in_re X (re.++ (str.to_re "Microsoft") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Toolbar\u{22}StarLogger\u{22}\u{a}")))))
(check-sat)
