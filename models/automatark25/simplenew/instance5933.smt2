(declare-const X String)
; ToolBar\s+HWAEUser-Agent\u{3A}Theef2-\>M\u{2E}zipbar\-navig\u{2E}yandex\u{2E}ru
(assert (not (str.in_re X (re.++ (str.to_re "ToolBar") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAEUser-Agent:Theef2->M.zipbar-navig.yandex.ru\u{a}")))))
(check-sat)
