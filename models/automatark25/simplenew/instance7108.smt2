(declare-const X String)
; GamespyAttachedIndyReferer\u{3A}ToolbarCurrent\u{3B}CIA
(assert (str.in_re X (str.to_re "GamespyAttachedIndyReferer:ToolbarCurrent;CIA\u{a}")))
(check-sat)
