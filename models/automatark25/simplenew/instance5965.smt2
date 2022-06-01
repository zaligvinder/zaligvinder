(declare-const X String)
; /\/\d+\.mp3\?rnd=\d+$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "0" "9")) (str.to_re ".mp3?rnd=") (re.+ (re.range "0" "9")) (str.to_re "/U\u{a}")))))
(check-sat)
