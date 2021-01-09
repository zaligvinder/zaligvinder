(declare-const X String)
; ProjectHost\x3AlogHost\x3Awww\x2Esnap\x2EcomGoogle-\>rtServidor\x2E
(assert (not (str.in.re X (str.to.re "ProjectHost:logHost:www.snap.comGoogle->rtServidor.\x13\x0a"))))
(check-sat)
