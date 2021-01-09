(declare-const X String)
; SpywareinformationToolBarX-Mailer\x3aUser-Agent\x3AMM_RECO\x2EEXE
(assert (str.in.re X (str.to.re "SpywareinformationToolBarX-Mailer:\x13User-Agent:MM_RECO.EXE\x0a")))
(check-sat)
