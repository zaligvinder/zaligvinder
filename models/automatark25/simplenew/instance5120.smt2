(declare-const X String)
; /\.php\?hgfc\=[a-f0-9]+$/U
(assert (str.in_re X (re.++ (str.to_re "/.php?hgfc=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to_re "/U\u{a}"))))
(check-sat)
