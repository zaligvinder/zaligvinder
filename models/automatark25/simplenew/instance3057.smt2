(declare-const X String)
; 666Host\x3aWEBCAM-Host\x3a
(assert (not (str.in.re X (str.to.re "666Host:WEBCAM-Host:\x0a"))))
(check-sat)
