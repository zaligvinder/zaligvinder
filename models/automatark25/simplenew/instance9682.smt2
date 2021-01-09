(declare-const X String)
; Server\x2Fdownload\x2Ftoolbar\x2Flocatorstoolbar\x2Ehtml%3fSubject\x3AEveryware
(assert (str.in.re X (str.to.re "Server/download/toolbar/locatorstoolbar.html%3fSubject:Everyware\x0a")))
(check-sat)
