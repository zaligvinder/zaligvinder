(declare-const X String)
; Host\x3A\d+ver\d+sportsUBAgent
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "ver") (re.+ (re.range "0" "9")) (str.to.re "sportsUBAgent\x0a")))))
(check-sat)
