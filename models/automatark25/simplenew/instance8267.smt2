(declare-const X String)
; 3A\d+Host\x3AHWAEUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "3A") (re.+ (re.range "0" "9")) (str.to.re "Host:HWAEUser-Agent:\x0a"))))
(check-sat)
