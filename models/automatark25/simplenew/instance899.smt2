(declare-const X String)
; SystemSleuth1\x2E0versionHost\x3AArrowHost\x3a3Awebsearch\x2Edrsnsrch\x2EcomhostieiWonHost\x3apjpoptwql\x2frlnj
(assert (str.in.re X (str.to.re "SystemSleuth\x131.0versionHost:ArrowHost:3Awebsearch.drsnsrch.com\x13hostieiWonHost:pjpoptwql/rlnj\x0a")))
(check-sat)
