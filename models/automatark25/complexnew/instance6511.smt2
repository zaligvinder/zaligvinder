(declare-const X String)
; engineResultUser-Agent\x3A
(assert (str.in.re X (str.to.re "engineResultUser-Agent:\x0a")))
; /filename=[^\n]*\x2eurl/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".url/i\x0a")))))
(check-sat)
