(declare-const X String)
; Onetrustyfiles\u{2E}comOverSpyzopabora\u{2E}info
(assert (not (str.in_re X (str.to_re "Onetrustyfiles.comOverSpyzopabora.info\u{a}"))))
; /filename=[^\n]*\u{2e}cis/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cis/i\u{a}"))))
(check-sat)
