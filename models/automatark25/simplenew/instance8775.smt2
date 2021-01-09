(declare-const X String)
; SAcc\d+Seconds\-\x2Fcommunicatortb
(assert (not (str.in.re X (re.++ (str.to.re "SAcc") (re.+ (re.range "0" "9")) (str.to.re "Seconds-/communicatortb\x0a")))))
(check-sat)
