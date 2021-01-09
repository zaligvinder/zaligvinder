(declare-const X String)
; /\.php\?b=[A-F0-9]+&v=1\./U
(assert (str.in.re X (re.++ (str.to.re "/.php?b=") (re.+ (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&v=1./U\x0a"))))
(check-sat)
