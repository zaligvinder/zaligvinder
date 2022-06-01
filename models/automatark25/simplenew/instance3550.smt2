(declare-const X String)
; SAcc\d+Seconds\-\u{2F}communicatortb
(assert (str.in_re X (re.++ (str.to_re "SAcc") (re.+ (re.range "0" "9")) (str.to_re "Seconds-/communicatortb\u{a}"))))
(check-sat)
