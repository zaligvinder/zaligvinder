(declare-const X String)
; /\.php\?hgfc\=[a-f0-9]+$/U
(assert (not (str.in.re X (re.++ (str.to.re "/.php?hgfc=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
(check-sat)
