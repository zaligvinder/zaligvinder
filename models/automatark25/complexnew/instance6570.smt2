(declare-const X String)
; [:]{1}[-~+o]?[)>]+
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re ":")) (re.opt (re.union (str.to.re "-") (str.to.re "~") (str.to.re "+") (str.to.re "o"))) (re.+ (re.union (str.to.re ")") (str.to.re ">"))) (str.to.re "\x0a")))))
; /^From\x3a[^\r\n]*SpyBuddy/smi
(assert (str.in.re X (re.++ (str.to.re "/From:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "SpyBuddy/smi\x0a"))))
; IPOblivionhoroscopefowclxccdxn\x2fuxwn\.ddy
(assert (str.in.re X (str.to.re "IPOblivionhoroscopefowclxccdxn/uxwn.ddy\x0a")))
; Subject\x3areportGatorNavExcel
(assert (str.in.re X (str.to.re "Subject:reportGatorNavExcel\x0a")))
(check-sat)
