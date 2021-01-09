(declare-const X String)
; ^((A(((H[MX])|(M(P|SN))|(X((D[ACH])|(M[DS]))?)))?)|(K7(A)?)|(D(H[DLM])?))(\d{3,4})[ABD-G][CHJK-NPQT-Y][Q-TV][1-4][B-E]$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "A") (re.opt (re.union (re.++ (str.to.re "H") (re.union (str.to.re "M") (str.to.re "X"))) (re.++ (str.to.re "M") (re.union (str.to.re "P") (str.to.re "SN"))) (re.++ (str.to.re "X") (re.opt (re.union (re.++ (str.to.re "D") (re.union (str.to.re "A") (str.to.re "C") (str.to.re "H"))) (re.++ (str.to.re "M") (re.union (str.to.re "D") (str.to.re "S"))))))))) (re.++ (str.to.re "K7") (re.opt (str.to.re "A"))) (re.++ (str.to.re "D") (re.opt (re.++ (str.to.re "H") (re.union (str.to.re "D") (str.to.re "L") (str.to.re "M")))))) ((_ re.loop 3 4) (re.range "0" "9")) (re.union (str.to.re "A") (str.to.re "B") (re.range "D" "G")) (re.union (str.to.re "C") (str.to.re "H") (str.to.re "J") (re.range "K" "N") (str.to.re "P") (str.to.re "Q") (re.range "T" "Y")) (re.union (re.range "Q" "T") (str.to.re "V")) (re.range "1" "4") (re.range "B" "E") (str.to.re "\x0a")))))
; ^((\+989)|(989)|(00989)|(09|9))([1|2|3][0-9]\d{7}$)
(assert (str.in.re X (re.++ (re.union (str.to.re "+989") (str.to.re "989") (str.to.re "00989") (str.to.re "09") (str.to.re "9")) (str.to.re "\x0a") (re.union (str.to.re "1") (str.to.re "|") (str.to.re "2") (str.to.re "3")) (re.range "0" "9") ((_ re.loop 7 7) (re.range "0" "9")))))
; /\x2esmi([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.smi") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ixqshv\x2fqzccsMM_RECO\x2EEXE%3fwwwwp-includes\x2Ftheme\x2Ephp\x3F
(assert (str.in.re X (str.to.re "ixqshv/qzccsMM_RECO.EXE%3fwwwwp-includes/theme.php?\x0a")))
; /RegExp?\x23.{0,5}\x28\x3f[^\x29]{0,4}i.*?\x28\x3f\x2d[^\x29]{0,4}i.{0,50}\x7c\x7c/smi
(assert (not (str.in.re X (re.++ (str.to.re "/RegEx") (re.opt (str.to.re "p")) (str.to.re "#") ((_ re.loop 0 5) re.allchar) (str.to.re "(?") ((_ re.loop 0 4) (re.comp (str.to.re ")"))) (str.to.re "i") (re.* re.allchar) (str.to.re "(?-") ((_ re.loop 0 4) (re.comp (str.to.re ")"))) (str.to.re "i") ((_ re.loop 0 50) re.allchar) (str.to.re "||/smi\x0a")))))
(check-sat)
