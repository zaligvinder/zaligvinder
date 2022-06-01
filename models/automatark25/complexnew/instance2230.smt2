(declare-const X String)
; /filename=[^\n]*\u{2e}bcl/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".bcl/i\u{a}"))))
; Host\u{3a}\s+ToolBarX-Mailer\u{3a}User-Agent\u{3A}MM_RECO\u{2E}EXE
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ToolBarX-Mailer:\u{13}User-Agent:MM_RECO.EXE\u{a}")))))
; /filename=[^\n]*\u{2e}zip/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".zip/i\u{a}")))))
; A-311www3\.addfreestats\.comAttachedX-Mailer\u{3A}
(assert (str.in_re X (str.to_re "A-311www3.addfreestats.comAttachedX-Mailer:\u{13}\u{a}")))
; /filename=[^\n]*\u{2e}aom/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".aom/i\u{a}"))))
(check-sat)
