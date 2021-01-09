(declare-const X String)
; User-Agent\x3ARunnerads\.grokads\.comHost\x3Amcndvwoemn\x2flvv\.jde
(assert (str.in.re X (str.to.re "User-Agent:Runnerads.grokads.comHost:mcndvwoemn/lvv.jde\x0a")))
(check-sat)
