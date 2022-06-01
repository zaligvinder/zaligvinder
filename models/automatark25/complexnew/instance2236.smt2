(declare-const X String)
; TPSystemad\u{2E}searchsquire\u{2E}comv\u{2E}Host\u{3A}hotbar
(assert (not (str.in_re X (str.to_re "TPSystemad.searchsquire.comv.Host:hotbar\u{a}"))))
; /\u{2e}mswmm([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mswmm") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
