(declare-const X String)
; trustyfiles\u{2E}com\szopabora\u{2E}info\w+User-Agent\u{3A}Host\u{3A}TeomaBarHost\u{3A}Hours
(assert (str.in_re X (re.++ (str.to_re "trustyfiles.com") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "zopabora.info") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "User-Agent:Host:TeomaBarHost:Hours\u{a}"))))
(check-sat)
