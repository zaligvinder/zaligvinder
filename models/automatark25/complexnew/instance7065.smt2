(declare-const X String)
; \$?GP[a-z]{3,},([a-z0-9\.]*,)+([a-z0-9]{1,2}\*[a-z0-9]{1,2})
(assert (str.in.re X (re.++ (re.opt (str.to.re "$")) (str.to.re "GP,") (re.+ (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "."))) (str.to.re ","))) (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "a" "z")) (re.* (re.range "a" "z")) ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "*") ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "0" "9"))))))
; Host\x3ATest\x3C\x2Fchat\x3EResultsSubject\x3A
(assert (not (str.in.re X (str.to.re "Host:Test</chat>ResultsSubject:\x0a"))))
; /\x2evisprj([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.visprj") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
