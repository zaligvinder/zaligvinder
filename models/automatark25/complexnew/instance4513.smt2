(declare-const X String)
; /\x2ewri([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.wri") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; From\x3aX-Mailer\x3Abacktrust\x2EcomReferer\x3aSupremewjpropqmlpohj\x2floLogsX-FILTERED-BY-GHOST\x3a
(assert (str.in.re X (str.to.re "From:X-Mailer:\x13backtrust.comReferer:Supremewjpropqmlpohj/loLogsX-FILTERED-BY-GHOST:\x0a")))
(check-sat)
