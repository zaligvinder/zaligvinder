(declare-const X String)
; Host\x3A\s+Subject\x3aHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:Host:\x0a")))))
; /\?action=\w+gen&v=\d+/U
(assert (str.in.re X (re.++ (str.to.re "/?action=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gen&v=") (re.+ (re.range "0" "9")) (str.to.re "/U\x0a"))))
(check-sat)
