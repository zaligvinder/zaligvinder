(declare-const X String)
; /\x2ef4p([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.f4p") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /\x2Faws\d{1,5}\.jsp\x3F/i
(assert (str.in.re X (re.++ (str.to.re "//aws") ((_ re.loop 1 5) (re.range "0" "9")) (str.to.re ".jsp?/i\x0a"))))
; e(vi?)?
(assert (not (str.in.re X (re.++ (str.to.re "e") (re.opt (re.++ (str.to.re "v") (re.opt (str.to.re "i")))) (str.to.re "\x0a")))))
(check-sat)
