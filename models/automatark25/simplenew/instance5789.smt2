(declare-const X String)
; Host\x3a\s+ToolBarX-Mailer\x3aUser-Agent\x3AMM_RECO\x2EEXE
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ToolBarX-Mailer:\x13User-Agent:MM_RECO.EXE\x0a"))))
(check-sat)
