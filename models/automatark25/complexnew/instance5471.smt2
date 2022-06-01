(declare-const X String)
; gdvsotuqwsg\u{2f}dxt\.hdFrom\u{3a}hirmvtg\u{2f}ggqh\.kqh
(assert (not (str.in_re X (str.to_re "gdvsotuqwsg/dxt.hdFrom:hirmvtg/ggqh.kqh\u{1b}\u{a}"))))
; /\u{2e}rt([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.rt") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
(check-sat)
