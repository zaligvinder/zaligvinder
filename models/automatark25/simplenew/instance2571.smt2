(declare-const X String)
; Subject\u{3a}\d+rprpgbnrppb\u{2f}ci
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ci\u{a}")))))
(check-sat)
