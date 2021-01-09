(declare-const X String)
; Subject\x3a\d+rprpgbnrppb\x2fci
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.range "0" "9")) (str.to.re "rprpgbnrppb/ci\x0a")))))
(check-sat)
