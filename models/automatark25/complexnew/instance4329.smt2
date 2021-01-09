(declare-const X String)
; /^("(\\["\\]|[^"])*"|[^\n])*(\n|$)/gm
(assert (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (re.++ (str.to.re "\x22") (re.* (re.union (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x22") (str.to.re "\x5c"))) (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.comp (str.to.re "\x0a")))) (str.to.re "\x0a/gm\x0a"))))
; /filename=[^\n]*\x2esmi/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smi/i\x0a"))))
; Referer\x3Amywaynowpgwtjgxwthx\x2fbyb\.xkywww\x2Eu88\x2Ecnsource%3Dultrasearch136%26campaign%3Dsnap
(assert (not (str.in.re X (str.to.re "Referer:mywaynowpgwtjgxwthx/byb.xkywww.u88.cnsource%3Dultrasearch136%26campaign%3Dsnap\x0a"))))
; /filename=[^\n]*\x2eurl/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".url/i\x0a"))))
; (^[0-9]{0,10}$)
(assert (str.in.re X (re.++ ((_ re.loop 0 10) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
