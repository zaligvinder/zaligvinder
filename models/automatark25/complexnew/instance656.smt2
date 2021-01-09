(declare-const X String)
; /STOR fp[0-9A-F]{44}\x2ebin/
(assert (str.in.re X (re.++ (str.to.re "/STOR fp") ((_ re.loop 44 44) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re ".bin/\x0a"))))
; /\/\d+\.mp3$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re ".mp3/U\x0a")))))
(check-sat)
