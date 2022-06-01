(declare-const X String)
; tipHost\u{3A}GirafaClient\u{d}\u{a}subject=GhostVoice
(assert (not (str.in_re X (str.to_re "tipHost:GirafaClient\u{13}\u{d}\u{a}subject=GhostVoice\u{a}"))))
; ^([0-7])*$
(assert (str.in_re X (re.++ (re.* (re.range "0" "7")) (str.to_re "\u{a}"))))
; /filename=[^\n]*\u{2e}jpx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpx/i\u{a}")))))
(check-sat)
