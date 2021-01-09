(declare-const X String)
; Host\x3AAttachedengineact=Download
(assert (str.in.re X (str.to.re "Host:Attachedengineact=Download\x0a")))
(check-sat)
