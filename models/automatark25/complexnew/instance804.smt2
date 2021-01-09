(declare-const X String)
; pjpoptwql\x2frlnjsportsHost\x3ASubject\x3aYAHOOdestroyed\x21
(assert (str.in.re X (str.to.re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\x0a")))
; Host\x3APG=SPEEDBARReferer\x3a
(assert (not (str.in.re X (str.to.re "Host:PG=SPEEDBARReferer:\x0a"))))
(check-sat)
