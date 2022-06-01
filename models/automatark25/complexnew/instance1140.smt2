(declare-const X String)
; /GET\s\/[\w-]{64}\sHTTP\/1/
(assert (str.in_re X (re.++ (str.to_re "/GET") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/") ((_ re.loop 64 64) (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "HTTP/1/\u{a}"))))
; /^.{9}[^\u{3}\u{a}\u{11}\u{10}]/R
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 9 9) re.allchar) (re.union (str.to_re "\u{3}") (str.to_re "\u{a}") (str.to_re "\u{11}") (str.to_re "\u{10}")) (str.to_re "/R\u{a}"))))
; Log[^\n\r]*Host\u{3A}\dHOST\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Log") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.range "0" "9") (str.to_re "HOST:User-Agent:\u{a}")))))
; forum=From\u{3a}comTencentTravelerBackAtTaCkExplorer
(assert (not (str.in_re X (str.to_re "forum=From:comTencentTravelerBackAtTaCkExplorer\u{a}"))))
(check-sat)
