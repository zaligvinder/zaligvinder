(declare-const X String)
; UI2AgentConnectedDesktopSubject\x3Aixqshv\x2fqzccsactualnames\.com
(assert (not (str.in.re X (str.to.re "UI2AgentConnectedDesktopSubject:ixqshv/qzccsactualnames.com\x0a"))))
; /filename=[^\n]*\x2eaddin/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".addin/i\x0a")))))
(check-sat)
