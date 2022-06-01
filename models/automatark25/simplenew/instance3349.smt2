(declare-const X String)
; Stealthwww\u{2E}myarmory\u{2E}comresultsmaster\u{2E}com
(assert (not (str.in_re X (str.to_re "Stealthwww.myarmory.comresultsmaster.com\u{13}\u{a}"))))
(check-sat)
