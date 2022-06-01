(declare-const X String)
; MicrosoftHost\u{3A}Subject\u{3a}namedDownloadUser-Agent\u{3a}
(assert (not (str.in_re X (str.to_re "MicrosoftHost:Subject:namedDownloadUser-Agent:\u{a}"))))
; <[^>]*>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}"))))
(check-sat)
