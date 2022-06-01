(declare-const X String)
; /\u{2e}jpx([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.jpx") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; GmbH\d+Host\u{3A}\w+adblock\u{2E}linkz\u{2E}comUser-Agent\u{3A}email
(assert (str.in_re X (re.++ (str.to_re "GmbH") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "adblock.linkz.comUser-Agent:email\u{a}"))))
; DaysinfoBackAtTaCkwww\u{2E}alfacleaner\u{2E}com
(assert (str.in_re X (str.to_re "DaysinfoBackAtTaCkwww.alfacleaner.com\u{a}")))
; ^((0[1-9]|1[0-9]|2[0-4])([0-5]\d){2})$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4"))) ((_ re.loop 2 2) (re.++ (re.range "0" "5") (re.range "0" "9"))))))
(check-sat)
