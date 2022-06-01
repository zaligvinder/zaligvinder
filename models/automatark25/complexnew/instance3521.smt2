(declare-const X String)
; from\u{3A}User-Agent\u{3A}ChildWebGuardian
(assert (not (str.in_re X (str.to_re "from:User-Agent:ChildWebGuardian\u{a}"))))
; SpywareinformationToolBarX-Mailer\u{3a}User-Agent\u{3A}MM_RECO\u{2E}EXE
(assert (not (str.in_re X (str.to_re "SpywareinformationToolBarX-Mailer:\u{13}User-Agent:MM_RECO.EXE\u{a}"))))
; /filename=[^\n]*\u{2e}psd/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".psd/i\u{a}"))))
; /\/jlnp\.html$/U
(assert (str.in_re X (str.to_re "//jlnp.html/U\u{a}")))
(check-sat)
