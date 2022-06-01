(declare-const X String)
; corep\u{2E}dmcast\u{2E}comOwner\u{3A}
(assert (not (str.in_re X (str.to_re "corep.dmcast.comOwner:\u{a}"))))
; Host\u{3A}\w+Host\u{3A}User-Agent\u{3A}TPSystemad\u{2E}searchsquire\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:User-Agent:TPSystemad.searchsquire.com\u{a}"))))
(check-sat)
