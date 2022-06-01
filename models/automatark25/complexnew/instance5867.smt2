(declare-const X String)
; /\u{2e}hta([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.hta") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; www\.thecommunicator\.net\d+http\u{3A}\u{2F}\u{2F}tv\u{2E}seekmo\u{2E}com\u{2F}showme\u{2E}aspx\u{3F}keyword=
(assert (not (str.in_re X (re.++ (str.to_re "www.thecommunicator.net") (re.+ (re.range "0" "9")) (str.to_re "http://tv.seekmo.com/showme.aspx?keyword=\u{a}")))))
; ^UA-\d+-\d+$
(assert (not (str.in_re X (re.++ (str.to_re "UA-") (re.+ (re.range "0" "9")) (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re "\u{a}")))))
; Stablecmemailyxegtd\u{2f}efcwgUin=PromulGate
(assert (not (str.in_re X (str.to_re "Stablecmemailyxegtd/efcwgUin=PromulGate\u{a}"))))
(check-sat)
