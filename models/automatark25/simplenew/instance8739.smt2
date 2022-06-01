(declare-const X String)
; Referer\u{3A}mywaynowpgwtjgxwthx\u{2f}byb\.xkywww\u{2E}u88\u{2E}cnsource%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in_re X (str.to_re "Referer:mywaynowpgwtjgxwthx/byb.xkywww.u88.cnsource%3Dultrasearch136%26campaign%3Dsnap\u{a}"))))
(check-sat)
