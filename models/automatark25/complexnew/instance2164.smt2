(declare-const X String)
; UI2AgentConnectedDesktopSubject\x3Aixqshv\x2fqzccsactualnames\.com
(assert (not (str.in.re X (str.to.re "UI2AgentConnectedDesktopSubject:ixqshv/qzccsactualnames.com\x0a"))))
; /\x28\x3f\x3d[^)]{300}/
(assert (str.in.re X (re.++ (str.to.re "/(?=") ((_ re.loop 300 300) (re.comp (str.to.re ")"))) (str.to.re "/\x0a"))))
(check-sat)
