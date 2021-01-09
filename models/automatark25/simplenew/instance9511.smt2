(declare-const X String)
; Referer\x3AUser-Agent\x3AFrom\x3AUser-Agent\x3Aadfsgecoiwnf
(assert (not (str.in.re X (str.to.re "Referer:User-Agent:From:User-Agent:adfsgecoiwnf\x1b\x0a"))))
(check-sat)
