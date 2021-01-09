(declare-const X String)
; \x2Frss\d+answer\sHost\x3A
(assert (str.in.re X (re.++ (str.to.re "/rss") (re.+ (re.range "0" "9")) (str.to.re "answer") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:\x0a"))))
; ^((A(((H[MX])|(M(P|SN))|(X((D[ACH])|(M[DS]))?)))?)|(K7(A)?)|(D(H[DLM])?))(\d{3,4})[ABD-G][CHJK-NPQT-Y][Q-TV][1-4][B-E]$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "A") (re.opt (re.union (re.++ (str.to.re "H") (re.union (str.to.re "M") (str.to.re "X"))) (re.++ (str.to.re "M") (re.union (str.to.re "P") (str.to.re "SN"))) (re.++ (str.to.re "X") (re.opt (re.union (re.++ (str.to.re "D") (re.union (str.to.re "A") (str.to.re "C") (str.to.re "H"))) (re.++ (str.to.re "M") (re.union (str.to.re "D") (str.to.re "S"))))))))) (re.++ (str.to.re "K7") (re.opt (str.to.re "A"))) (re.++ (str.to.re "D") (re.opt (re.++ (str.to.re "H") (re.union (str.to.re "D") (str.to.re "L") (str.to.re "M")))))) ((_ re.loop 3 4) (re.range "0" "9")) (re.union (str.to.re "A") (str.to.re "B") (re.range "D" "G")) (re.union (str.to.re "C") (str.to.re "H") (str.to.re "J") (re.range "K" "N") (str.to.re "P") (str.to.re "Q") (re.range "T" "Y")) (re.union (re.range "Q" "T") (str.to.re "V")) (re.range "1" "4") (re.range "B" "E") (str.to.re "\x0a"))))
; fsbuff\s+User-Agent\x3Afrom\x3A
(assert (not (str.in.re X (re.++ (str.to.re "fsbuff") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:from:\x0a")))))
(check-sat)
