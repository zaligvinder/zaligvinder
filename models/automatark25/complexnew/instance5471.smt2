(declare-const X String)
; gdvsotuqwsg\x2fdxt\.hdFrom\x3ahirmvtg\x2fggqh\.kqh
(assert (not (str.in.re X (str.to.re "gdvsotuqwsg/dxt.hdFrom:hirmvtg/ggqh.kqh\x1b\x0a"))))
; /\x2ert([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.rt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
