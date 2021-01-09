(declare-const X String)
; /\x2ewmf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.wmf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; <!*[^<>]*>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (str.to.re "!")) (re.* (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re ">\x0a")))))
; User-Agent\x3A\x2Ftba\x2FFrom\x3A
(assert (str.in.re X (str.to.re "User-Agent:/tba/From:\x0a")))
; /\x2evwr([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.vwr") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^100(\.0{0,2})? *%?$|^\d{1,2}(\.\d{1,2})? *%?$
(assert (str.in.re X (re.union (re.++ (str.to.re "100") (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (str.to.re "0")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
(check-sat)
