(declare-const X String)
; /\/\d+\.mp3\?rnd=\d+$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re ".mp3?rnd=") (re.+ (re.range "0" "9")) (str.to.re "/U\x0a"))))
(check-sat)
