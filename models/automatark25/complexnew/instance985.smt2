(declare-const X String)
; /filename=[^\n]*\x2etif/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tif/i\x0a")))))
; /gate\x2ephp\x3freg=[a-z]{10}/U
(assert (str.in.re X (re.++ (str.to.re "/gate.php?reg=") ((_ re.loop 10 10) (re.range "a" "z")) (str.to.re "/U\x0a"))))
; DigExtNetBus\x5BStatic
(assert (not (str.in.re X (str.to.re "DigExtNetBus[Static\x0a"))))
(check-sat)
