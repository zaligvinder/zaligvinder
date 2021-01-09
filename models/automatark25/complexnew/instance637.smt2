(declare-const X String)
; ^(.|\r|\n){1,10}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 10) (re.union re.allchar (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "\x0a")))))
; /\x28compatible\x3b[A-Z]*\x3b\x29\x0d\x0a/H
(assert (str.in.re X (re.++ (str.to.re "/(compatible;") (re.* (re.range "A" "Z")) (str.to.re ";)\x0d\x0a/H\x0a"))))
; ^([01]\d|2[0123])([0-5]\d){2}([0-99]\d)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2") (str.to.re "3")))) ((_ re.loop 2 2) (re.++ (re.range "0" "5") (re.range "0" "9"))) (str.to.re "\x0a") (re.union (re.range "0" "9") (str.to.re "9")) (re.range "0" "9")))))
; User-Agent\x3AUser-Agent\x3aURLencoderthis\x7CConnected
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:URLencoderthis|Connected\x0a"))))
(check-sat)
