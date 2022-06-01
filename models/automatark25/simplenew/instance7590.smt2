(declare-const X String)
; DesktopSupportFiles\u{2E}htmlReferer\u{3A}www\u{2E}freescratchandwin\u{2E}com
(assert (str.in_re X (str.to_re "DesktopSupportFiles\u{13}.htmlReferer:www.freescratchandwin.com\u{a}")))
(check-sat)
