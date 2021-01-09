(declare-const X String)
; OS\x2F\d+User-Agent\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "OS/") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:User-Agent:\x0a")))))
(check-sat)
