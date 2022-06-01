(declare-const X String)
; /\&k=\d+($|\&h=)/U
(assert (str.in_re X (re.++ (str.to_re "/&k=") (re.+ (re.range "0" "9")) (str.to_re "&h=/U\u{a}"))))
(check-sat)
