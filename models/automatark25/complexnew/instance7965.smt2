(declare-const X String)
; MicrosoftHost\x3ASubject\x3anamedDownloadUser-Agent\x3a
(assert (not (str.in.re X (str.to.re "MicrosoftHost:Subject:namedDownloadUser-Agent:\x0a"))))
; <[^>]*>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (re.comp (str.to.re ">"))) (str.to.re ">\x0a"))))
(check-sat)
