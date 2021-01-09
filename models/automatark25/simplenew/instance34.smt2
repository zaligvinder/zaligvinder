(declare-const X String)
; at\w+Pre\s+adfsgecoiwnfhirmvtg\x2fggqh\.kqhSurveillanceHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "at") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Pre") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "adfsgecoiwnf\x1bhirmvtg/ggqh.kqh\x1bSurveillance\x13Host:\x0a")))))
(check-sat)
