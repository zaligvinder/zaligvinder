(declare-const X String)
; /RegExp?\x23.{0,5}\x28\x3f[^\x29]{0,4}i.*?\x28\x3f\x2d[^\x29]{0,4}i.{0,50}\x7c\x7c/smi
(assert (not (str.in.re X (re.++ (str.to.re "/RegEx") (re.opt (str.to.re "p")) (str.to.re "#") ((_ re.loop 0 5) re.allchar) (str.to.re "(?") ((_ re.loop 0 4) (re.comp (str.to.re ")"))) (str.to.re "i") (re.* re.allchar) (str.to.re "(?-") ((_ re.loop 0 4) (re.comp (str.to.re ")"))) (str.to.re "i") ((_ re.loop 0 50) re.allchar) (str.to.re "||/smi\x0a")))))
; /nsrjb[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (str.in.re X (re.++ (str.to.re "/nsrjb") (re.* (re.comp (str.to.re "\x00"))) (re.union (str.to.re "$(") (str.to.re ";") (str.to.re "|") (str.to.re "&") (str.to.re "`")) (str.to.re "/\x0a"))))
(check-sat)
