(declare-const X String)
; TPSystemad\u{2E}searchsquire\u{2E}comv\u{2E}Host\u{3A}hotbar
(assert (str.in_re X (str.to_re "TPSystemad.searchsquire.comv.Host:hotbar\u{a}")))
; Spyware\s+ToolBar\s+User-Agent\u{3A}MM_RECO\u{2E}EXEToClientonAlert
(assert (str.in_re X (re.++ (str.to_re "Spyware") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ToolBar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:MM_RECO.EXEToClientonAlert\u{a}"))))
(check-sat)
