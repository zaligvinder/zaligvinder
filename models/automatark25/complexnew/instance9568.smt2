(declare-const X String)
; ^[a-zA-Z]{4}\d{6}[a-zA-Z]{6}\d{2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 6 6) (re.range "0" "9")) ((_ re.loop 6 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; \bhttp(s?)\:\/\/[a-zA-Z0-9\/\?\-\.\&\(\)_=#]*
(assert (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/") (str.to.re "?") (str.to.re "-") (str.to.re ".") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "_") (str.to.re "=") (str.to.re "#"))) (str.to.re "\x0a"))))
; ^\$?\d{1,2}\,\d{3}?\,\d{3}?(\.(\d{2}))$|^\$?\d{1,3}?\,\d{3}?(\.(\d{2}))$|^\$?\d{1,3}?(\.(\d{2}))$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "$")) ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "$")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "$")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "\x0a.") ((_ re.loop 2 2) (re.range "0" "9"))))))
; /\x2eaom([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.aom") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
