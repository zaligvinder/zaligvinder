(declare-const X String)
; Server\u{2F}download\u{2F}toolbar\u{2F}locatorstoolbar\u{2E}html%3fSubject\u{3A}Everyware
(assert (str.in_re X (str.to_re "Server/download/toolbar/locatorstoolbar.html%3fSubject:Everyware\u{a}")))
(check-sat)
