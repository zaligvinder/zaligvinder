(declare-const X String)
; gdvsotuqwsg\x2fdxt\.hdFrom\x3ahirmvtg\x2fggqh\.kqh
(assert (str.in.re X (str.to.re "gdvsotuqwsg/dxt.hdFrom:hirmvtg/ggqh.kqh\x1b\x0a")))
; /filename=[^\n]*\x2evwr/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vwr/i\x0a"))))
(check-sat)
