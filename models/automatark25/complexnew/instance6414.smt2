(declare-const X String)
; Iterenetbadurl\u{2E}grandstreetinteractive\u{2E}com
(assert (str.in_re X (str.to_re "Iterenetbadurl.grandstreetinteractive.com\u{a}")))
; ^[1-9]\d$
(assert (str.in_re X (re.++ (re.range "1" "9") (re.range "0" "9") (str.to_re "\u{a}"))))
; Version\s+User-Agent\u{3A}bindmqnqgijmng\u{2f}oj
(assert (not (str.in_re X (re.++ (str.to_re "Version") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:bindmqnqgijmng/oj\u{a}")))))
(check-sat)
