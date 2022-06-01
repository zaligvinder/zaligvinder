(declare-const X String)
; ^((0[1-9])|(1[0-2]))\/*((2011)|(20[1-9][1-9]))$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.* (str.to_re "/")) (re.union (str.to_re "2011") (re.++ (str.to_re "20") (re.range "1" "9") (re.range "1" "9"))) (str.to_re "\u{a}"))))
; passcorrect\u{3B}\s+\u{2F}cbn\u{2F}node=Host\u{3A}\u{3F}search\u{3D}version
(assert (str.in_re X (re.++ (str.to_re "passcorrect;") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/cbn/node=Host:?search=version\u{a}"))))
; linkautomatici\u{2E}com\dBasic\d+Host\u{3A}FloodedFictionalUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "linkautomatici.com") (re.range "0" "9") (str.to_re "Basic") (re.+ (re.range "0" "9")) (str.to_re "Host:FloodedFictionalUser-Agent:\u{a}"))))
(check-sat)
