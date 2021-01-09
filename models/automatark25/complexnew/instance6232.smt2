(declare-const X String)
; /\x2ehhk([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.hhk") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; [0-9]{4}[A-Z]{2}
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "\x0a"))))
; www\x2Emaxifiles\x2EcomServidor\x2E
(assert (not (str.in.re X (str.to.re "www.maxifiles.comServidor.\x13\x0a"))))
; /^connect\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (not (str.in.re X (re.++ (str.to.re "/connect|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a")))))
; \\[\\w{2}\\]
(assert (not (str.in.re X (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x5c") (str.to.re "w") (str.to.re "{") (str.to.re "2") (str.to.re "}")) (str.to.re "\x0a")))))
(check-sat)
