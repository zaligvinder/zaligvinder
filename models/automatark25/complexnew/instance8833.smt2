(declare-const X String)
; /\.php\?setup=d\&s=\d+\&r=\d+/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/.php?setup=d&s=") (re.+ (re.range "0" "9")) (str.to.re "&r=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; gdvsotuqwsg\x2fdxt\.hdFrom\x3ahirmvtg\x2fggqh\.kqh
(assert (not (str.in.re X (str.to.re "gdvsotuqwsg/dxt.hdFrom:hirmvtg/ggqh.kqh\x1b\x0a"))))
; /filename=[^\n]*\x2ebmp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bmp/i\x0a"))))
(check-sat)
