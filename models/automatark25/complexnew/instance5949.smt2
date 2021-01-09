(declare-const X String)
; /\x2edib([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.dib") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ovplEchelonUser-Agent\x3AUser-Agent\x3AHost\x3a
(assert (str.in.re X (str.to.re "ovplEchelonUser-Agent:User-Agent:Host:\x0a")))
; ^([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4}$
(assert (str.in.re X (re.++ ((_ re.loop 7 7) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to.re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to.re "\x0a"))))
(check-sat)
