(declare-const X String)
; GamespyAttachedIndyReferer\x3AToolbarCurrent\x3BCIA
(assert (str.in.re X (str.to.re "GamespyAttachedIndyReferer:ToolbarCurrent;CIA\x0a")))
(check-sat)
