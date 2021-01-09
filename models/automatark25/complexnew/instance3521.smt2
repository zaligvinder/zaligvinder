(declare-const X String)
; from\x3AUser-Agent\x3AChildWebGuardian
(assert (not (str.in.re X (str.to.re "from:User-Agent:ChildWebGuardian\x0a"))))
; SpywareinformationToolBarX-Mailer\x3aUser-Agent\x3AMM_RECO\x2EEXE
(assert (not (str.in.re X (str.to.re "SpywareinformationToolBarX-Mailer:\x13User-Agent:MM_RECO.EXE\x0a"))))
; /filename=[^\n]*\x2epsd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".psd/i\x0a"))))
; /\/jlnp\.html$/U
(assert (str.in.re X (str.to.re "//jlnp.html/U\x0a")))
(check-sat)
