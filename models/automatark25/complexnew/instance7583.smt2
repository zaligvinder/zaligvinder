(declare-const X String)
; ^\.{1}
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re ".")) (str.to.re "\x0a"))))
; [+]?[ ]?\d{1,3}[ ]?\d{1,3}[- ]?\d{4}[- ]?\d{4}
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.opt (str.to.re " ")) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2egif([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.gif") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\x2ehtc([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.htc") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
