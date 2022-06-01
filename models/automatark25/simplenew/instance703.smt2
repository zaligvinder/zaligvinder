(declare-const X String)
; ppcdomain\u{2E}co\u{2E}uk\d+Referer\u{3A}\w+PARSERHost\u{3a}A-311ServerUser-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "ppcdomain.co.uk") (re.+ (re.range "0" "9")) (str.to_re "Referer:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "PARSERHost:A-311ServerUser-Agent:\u{a}")))))
(check-sat)
