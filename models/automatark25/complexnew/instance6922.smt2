(declare-const X String)
; /\x5f\w{24}\.exe/Pi
(assert (not (str.in.re X (re.++ (str.to.re "/_") ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".exe/Pi\x0a")))))
; [A-Z][a-zA-Z]+ [A-Z][a-zA-Z]+
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re " ") (re.range "A" "Z") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
(check-sat)
