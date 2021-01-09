(declare-const X String)
; tipHost\x3AGirafaClient\x0d\x0asubject=GhostVoice
(assert (str.in.re X (str.to.re "tipHost:GirafaClient\x13\x0d\x0asubject=GhostVoice\x0a")))
(check-sat)
