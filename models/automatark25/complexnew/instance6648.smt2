(declare-const X String)
; tipHost\x3AGirafaClient\x0d\x0asubject=GhostVoice
(assert (not (str.in.re X (str.to.re "tipHost:GirafaClient\x13\x0d\x0asubject=GhostVoice\x0a"))))
; ^([0-7])*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "7")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ejpx/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpx/i\x0a")))))
(check-sat)
