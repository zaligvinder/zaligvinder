(declare-const X String)
; Toolbar\d+ServerLiteToolbardailywww\u{2E}cameup\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.range "0" "9")) (str.to_re "ServerLiteToolbardailywww.cameup.com\u{13}\u{a}")))))
(check-sat)
