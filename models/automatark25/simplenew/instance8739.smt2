(declare-const X String)
; Referer\x3Amywaynowpgwtjgxwthx\x2fbyb\.xkywww\x2Eu88\x2Ecnsource%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in.re X (str.to.re "Referer:mywaynowpgwtjgxwthx/byb.xkywww.u88.cnsource%3Dultrasearch136%26campaign%3Dsnap\x0a"))))
(check-sat)
