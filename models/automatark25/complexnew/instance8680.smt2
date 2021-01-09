(declare-const X String)
; User-Agent\x3A\s+Host\x3A[^\n\r]*Hourspjpoptwql\x2frlnjFrom\x3Asbver\x3aGhost
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\x13\x0a")))))
; http://www.mail-password-recovery.com/
(assert (not (str.in.re X (re.++ (str.to.re "http://www") re.allchar (str.to.re "mail-password-recovery") re.allchar (str.to.re "com/\x0a")))))
; ^(([+]31|0031)\s\(0\)([0-9]{9})|([+]31|0031)\s0([0-9]{9})|0([0-9]{9}))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "+31") (str.to.re "0031")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "(0)") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (re.union (str.to.re "+31") (str.to.re "0031")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "0") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to.re "0") ((_ re.loop 9 9) (re.range "0" "9")))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2edcr/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dcr/i\x0a"))))
(check-sat)
