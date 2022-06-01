(declare-const X String)
; /filename=[^\n]*\u{2e}pjpeg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pjpeg/i\u{a}"))))
; ^\d[0-9]*[-/]\d[0-9]*$
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.* (re.range "0" "9")) (re.union (str.to_re "-") (str.to_re "/")) (re.range "0" "9") (re.* (re.range "0" "9")) (str.to_re "\u{a}")))))
; Host\u{3a}\s+ToolBarX-Mailer\u{3a}User-Agent\u{3A}MM_RECO\u{2E}EXE
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ToolBarX-Mailer:\u{13}User-Agent:MM_RECO.EXE\u{a}"))))
(check-sat)
