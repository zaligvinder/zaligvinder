(declare-const X String)
; Toolbar\d+ServerLiteToolbardailywww\u{2E}cameup\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.range "0" "9")) (str.to_re "ServerLiteToolbardailywww.cameup.com\u{13}\u{a}"))))
; /filename=[^\n]*\u{2e}plp/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".plp/i\u{a}"))))
; downloads\u{2E}morpheus\u{2E}com\u{2F}rotation
(assert (not (str.in_re X (str.to_re "downloads.morpheus.com/rotation\u{a}"))))
(check-sat)
