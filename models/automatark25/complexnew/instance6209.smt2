(declare-const X String)
; ^\.([rR]([aA][rR]|\d{2})|(\d{3})?)$
(assert (str.in.re X (re.++ (str.to.re ".") (re.union (re.++ (re.union (str.to.re "r") (str.to.re "R")) (re.union (re.++ (re.union (str.to.re "a") (str.to.re "A")) (re.union (str.to.re "r") (str.to.re "R"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.opt ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ToolbarUser-Agent\x3Awww\x2Ewebcruiser\x2EccDaemonUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "ToolbarUser-Agent:www.webcruiser.ccDaemonUser-Agent:\x0a"))))
(check-sat)
