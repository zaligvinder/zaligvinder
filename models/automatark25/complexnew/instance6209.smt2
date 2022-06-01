(declare-const X String)
; ^\.([rR]([aA][rR]|\d{2})|(\d{3})?)$
(assert (str.in_re X (re.++ (str.to_re ".") (re.union (re.++ (re.union (str.to_re "r") (str.to_re "R")) (re.union (re.++ (re.union (str.to_re "a") (str.to_re "A")) (re.union (str.to_re "r") (str.to_re "R"))) ((_ re.loop 2 2) (re.range "0" "9")))) (re.opt ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{a}"))))
; ToolbarUser-Agent\u{3A}www\u{2E}webcruiser\u{2E}ccDaemonUser-Agent\u{3A}
(assert (not (str.in_re X (str.to_re "ToolbarUser-Agent:www.webcruiser.ccDaemonUser-Agent:\u{a}"))))
(check-sat)
