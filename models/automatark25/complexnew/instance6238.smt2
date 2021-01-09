(declare-const X String)
; /User-Agent\:[^\x0a\x0d]+?Havij/H
(assert (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.+ (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Havij/H\x0a"))))
; Host\x3A\x252EResultsUser-Agent\x3A
(assert (str.in.re X (str.to.re "Host:%2EResultsUser-Agent:\x0a")))
(check-sat)
