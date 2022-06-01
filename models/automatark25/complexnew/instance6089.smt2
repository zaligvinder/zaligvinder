(declare-const X String)
; corep\u{2E}dmcast\u{2E}com\s+FunWebProducts\w+searchreslt\u{7D}\u{7B}Sysuptime\u{3A}Subject\u{3A}HANDY
(assert (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "FunWebProducts") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "searchreslt}{Sysuptime:Subject:HANDY\u{a}"))))
; /User-Agent\u{3a}\u{20}[^\u{d}\u{a}]*?\u{3b}U\u{3a}[^\u{d}\u{a}]{1,68}\u{3b}rv\u{3a}/H
(assert (str.in_re X (re.++ (str.to_re "/User-Agent: ") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re ";U:") ((_ re.loop 1 68) (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re ";rv:/H\u{a}"))))
(check-sat)
