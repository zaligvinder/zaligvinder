(declare-const X String)
; asdbiz\u{2E}biz\s+HWAEUser-Agent\u{3A}Theef2
(assert (not (str.in_re X (re.++ (str.to_re "asdbiz.biz") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAEUser-Agent:Theef2\u{a}")))))
; /filename=[^\n]*\u{2e}wal/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wal/i\u{a}"))))
(check-sat)
