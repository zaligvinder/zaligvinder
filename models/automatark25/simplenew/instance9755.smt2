(declare-const X String)
; \u{22}StarLogger\u{22}\w+Host\u{3a}SoftwareHost\u{3A}jokeWEBCAM-
(assert (str.in_re X (re.++ (str.to_re "\u{22}StarLogger\u{22}") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:SoftwareHost:jokeWEBCAM-\u{a}"))))
(check-sat)
