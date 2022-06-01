(declare-const X String)
; tipHost\u{3A}GirafaClient\u{d}\u{a}subject=GhostVoice
(assert (not (str.in_re X (str.to_re "tipHost:GirafaClient\u{13}\u{d}\u{a}subject=GhostVoice\u{a}"))))
(check-sat)
