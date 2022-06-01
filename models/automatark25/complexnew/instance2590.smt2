(declare-const X String)
; Toolbar\d+ServerLiteToolbardailywww\u{2E}cameup\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.range "0" "9")) (str.to_re "ServerLiteToolbardailywww.cameup.com\u{13}\u{a}")))))
; ^-?[0-9]\d{0,8}(\.\d{1,4})
(assert (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.range "0" "9") ((_ re.loop 0 8) (re.range "0" "9")) (str.to_re "\u{a}.") ((_ re.loop 1 4) (re.range "0" "9")))))
; /filename=[^\n]*\u{2e}pls/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pls/i\u{a}"))))
; /^\d{2}[\-\/]\d{2}[\-\/]\d{4}$/
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re "/")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re "/")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "/\u{a}"))))
; st=\s+Stopper\s+Host\u{3A}AgentProjectMyWebSearchSearchAssistant
(assert (str.in_re X (re.++ (str.to_re "st=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Stopper") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:AgentProjectMyWebSearchSearchAssistant\u{a}"))))
(check-sat)
