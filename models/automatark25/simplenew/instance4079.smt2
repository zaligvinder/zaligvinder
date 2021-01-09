(declare-const X String)
; ToolbarUser-Agent\x3Awww\x2Ewebcruiser\x2EccDaemonUser-Agent\x3A
(assert (str.in.re X (str.to.re "ToolbarUser-Agent:www.webcruiser.ccDaemonUser-Agent:\x0a")))
(check-sat)
