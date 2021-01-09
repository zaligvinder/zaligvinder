(declare-const X String)
; /\x2f\?ts\x3d[a-f0-9]{40}\x26/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//?ts=") ((_ re.loop 40 40) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&/Ui\x0a")))))
; httphostHost\x3aAgent\x22
(assert (str.in.re X (str.to.re "httphostHost:Agent\x22\x0a")))
; \x2Frss\d+answer\sHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "/rss") (re.+ (re.range "0" "9")) (str.to.re "answer") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:\x0a")))))
(check-sat)
