(declare-const X String)
; [+]?[ ]?\d{1,3}[ ]?\d{1,3}[- ]?\d{4}[- ]?\d{4}
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.opt (str.to.re " ")) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; User-Agent\x3AUser-Agent\x3a
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:\x0a"))))
(check-sat)
