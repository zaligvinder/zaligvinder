(declare-const X String)
; /filename=[^\n]*\x2ebcl/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bcl/i\x0a"))))
; Host\x3a\s+ToolBarX-Mailer\x3aUser-Agent\x3AMM_RECO\x2EEXE
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ToolBarX-Mailer:\x13User-Agent:MM_RECO.EXE\x0a")))))
; /filename=[^\n]*\x2ezip/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".zip/i\x0a")))))
; A-311www3\.addfreestats\.comAttachedX-Mailer\x3A
(assert (str.in.re X (str.to.re "A-311www3.addfreestats.comAttachedX-Mailer:\x13\x0a")))
; /filename=[^\n]*\x2eaom/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".aom/i\x0a"))))
(check-sat)
