(declare-const X String)
; User-Agent\x3aetbuviaebe\x2feqv\.bvv
(assert (str.in.re X (str.to.re "User-Agent:etbuviaebe/eqv.bvv\x0a")))
; /\/software\x2ephp\x3f[0-9]{15,}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//software.php?/Ui\x0a") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9"))))))
(check-sat)
