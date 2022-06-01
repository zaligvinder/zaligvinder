(declare-const X String)
; gdvsotuqwsg\u{2f}dxt\.hdFrom\u{3a}hirmvtg\u{2f}ggqh\.kqh
(assert (str.in_re X (str.to_re "gdvsotuqwsg/dxt.hdFrom:hirmvtg/ggqh.kqh\u{1b}\u{a}")))
; /filename=[^\n]*\u{2e}vwr/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".vwr/i\u{a}"))))
(check-sat)
