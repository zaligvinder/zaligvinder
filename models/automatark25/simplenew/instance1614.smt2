(declare-const X String)
; ovpl\w+UBAgent%3fSchwindlerurl=Host\x3ahttpUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "ovpl") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "UBAgent%3fSchwindlerurl=Host:httpUser-Agent:\x0a")))))
(check-sat)
