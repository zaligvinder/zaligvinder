(declare-const X String)
; pjpoptwql\u{2f}rlnj\d+waiting\d+ocllceclbhs\u{2f}gth\w+gdvsotuqwsg\u{2f}dxt\.hd^User-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "pjpoptwql/rlnj") (re.+ (re.range "0" "9")) (str.to_re "waiting") (re.+ (re.range "0" "9")) (str.to_re "ocllceclbhs/gth") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "gdvsotuqwsg/dxt.hdUser-Agent:\u{a}"))))
(check-sat)
