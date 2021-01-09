(declare-const X String)
; ^#?([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "#")) ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (re.opt ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^[0-9]{3}[-][0-9]{4}$
(assert (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; \x2Ephp\s+Host\x3Aorigin\x3Dsidefind\x22The
(assert (not (str.in.re X (re.++ (str.to.re ".php") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:origin=sidefind\x22The\x0a")))))
; \"[^"]+\"|\([^)]+\)|[^\"\s\()]+
(assert (not (str.in.re X (re.union (re.++ (str.to.re "\x22") (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (str.to.re "(") (re.+ (re.comp (str.to.re ")"))) (str.to.re ")")) (re.++ (re.+ (re.union (str.to.re "\x22") (str.to.re "(") (str.to.re ")") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))))
; /\x2ertf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.rtf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
