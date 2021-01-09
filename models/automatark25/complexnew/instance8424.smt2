(declare-const X String)
; User-Agent\x3A\s+ocllceclbhs\x2fgth.*Host\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gth") (re.* re.allchar) (str.to.re "Host:\x0a")))))
; bind\w+Owner\x3A\dBetaWordixqshv\x2fqzccs
(assert (not (str.in.re X (re.++ (str.to.re "bind") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:") (re.range "0" "9") (str.to.re "BetaWordixqshv/qzccs\x0a")))))
(check-sat)
