(declare-const X String)
; /filename=[^\n]*\x2epdf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pdf/i\x0a"))))
; MyHost\x3AtoHost\x3AWinSessionwww\x2eurlblaze\x2enetResultHost\x3A
(assert (str.in.re X (str.to.re "MyHost:toHost:WinSessionwww.urlblaze.netResultHost:\x0a")))
(check-sat)
