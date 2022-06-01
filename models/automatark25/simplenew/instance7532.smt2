(declare-const X String)
; Host\u{3A}\.exePass-OnHost\u{3A}\.exe\u{2F}toolbar\u{2F}
(assert (not (str.in_re X (str.to_re "Host:.exePass-OnHost:.exe/toolbar/\u{a}"))))
(check-sat)
