(declare-const X String)
; url=http\x3AGamespyjspIDENTIFYserverHOST\x3ASubject\x3A
(assert (str.in.re X (str.to.re "url=http:\x1bGamespyjspIDENTIFYserverHOST:Subject:\x0a")))
(check-sat)
