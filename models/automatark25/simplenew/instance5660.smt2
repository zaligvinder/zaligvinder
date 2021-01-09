(declare-const X String)
; User-Agent\x3A\d+moreKontikiHost\x3a
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "moreKontikiHost:\x0a"))))
(check-sat)
