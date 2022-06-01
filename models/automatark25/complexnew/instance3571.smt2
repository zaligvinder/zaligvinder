(declare-const X String)
; Onetrustyfiles\u{2E}comOverSpyzopabora\u{2E}info
(assert (str.in_re X (str.to_re "Onetrustyfiles.comOverSpyzopabora.info\u{a}")))
; /filename=[^\n]*\u{2e}maplet/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".maplet/i\u{a}"))))
(check-sat)
