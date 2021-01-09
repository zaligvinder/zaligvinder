(declare-const X String)
; /\x2emim([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mim") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^((0|[1-9]+[0-9]*)-(0|[1-9]+[0-9]*);|(0|[1-9]+[0-9]*);)*?((0|[1-9]+[0-9]*)-(0|[1-9]+[0-9]*)|(0|[1-9]+[0-9]*)){1}$
(assert (str.in.re X (re.++ (re.* (re.union (re.++ (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "-") (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re ";")) (re.++ (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re ";")))) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "-") (re.union (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))) (str.to.re "0") (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))))) (str.to.re "\x0a"))))
; User-Agent\x3ABetaWordixqshv\x2fqzccsServer\x00
(assert (str.in.re X (str.to.re "User-Agent:BetaWordixqshv/qzccsServer\x00\x0a")))
(check-sat)
