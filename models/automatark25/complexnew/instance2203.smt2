(declare-const X String)
; ^[D-d][K-k]-[1-9]{1}[0-9]{3}$
(assert (str.in.re X (re.++ (re.range "D" "d") (re.range "K" "k") (str.to.re "-") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
; User-Agent\x3A\s+\x7D\x7BPort\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Port:\x0a"))))
(check-sat)
