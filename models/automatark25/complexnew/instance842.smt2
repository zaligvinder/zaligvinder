(declare-const X String)
; Onetrustyfiles\x2EcomOverSpyzopabora\x2Einfo
(assert (not (str.in.re X (str.to.re "Onetrustyfiles.comOverSpyzopabora.info\x0a"))))
; /filename=[^\n]*\x2ecis/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cis/i\x0a"))))
(check-sat)
