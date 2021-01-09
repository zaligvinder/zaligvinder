(declare-const X String)
; /filename=[^\n]*\x2equo/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".quo/i\x0a")))))
; X-Mailer\x3aSpyAgentRootHost\x3A
(assert (str.in.re X (str.to.re "X-Mailer:\x13SpyAgentRootHost:\x0a")))
(check-sat)
