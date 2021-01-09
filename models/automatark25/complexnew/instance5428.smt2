(declare-const X String)
; ^[ \t]+|[ \t]+$
(assert (not (str.in.re X (re.union (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09"))) (str.to.re "\x0a"))))))
; logs\s+TCP.*Toolbarads\.grokads\.com
(assert (not (str.in.re X (re.++ (str.to.re "logs") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TCP") (re.* re.allchar) (str.to.re "Toolbarads.grokads.com\x0a")))))
; User-Agent\x3a\s+Host\x3A\s+proxystylesheet=Excitefhfksjzsfu\x2fahm\.uqs
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "proxystylesheet=Excitefhfksjzsfu/ahm.uqs\x0a")))))
; www\x2Ericercadoppia\x2Ecom\w+TPSystem\s+User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "www.ricercadoppia.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "TPSystem") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
; ^((A(((H[MX])|(M(P|SN))|(X((D[ACH])|(M[DS]))?)))?)|(K7(A)?)|(D(H[DLM])?))(\d{3,4})[ABD-G][CHJK-NPQT-Y][Q-TV][1-4][B-E]$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "A") (re.opt (re.union (re.++ (str.to.re "H") (re.union (str.to.re "M") (str.to.re "X"))) (re.++ (str.to.re "M") (re.union (str.to.re "P") (str.to.re "SN"))) (re.++ (str.to.re "X") (re.opt (re.union (re.++ (str.to.re "D") (re.union (str.to.re "A") (str.to.re "C") (str.to.re "H"))) (re.++ (str.to.re "M") (re.union (str.to.re "D") (str.to.re "S"))))))))) (re.++ (str.to.re "K7") (re.opt (str.to.re "A"))) (re.++ (str.to.re "D") (re.opt (re.++ (str.to.re "H") (re.union (str.to.re "D") (str.to.re "L") (str.to.re "M")))))) ((_ re.loop 3 4) (re.range "0" "9")) (re.union (str.to.re "A") (str.to.re "B") (re.range "D" "G")) (re.union (str.to.re "C") (str.to.re "H") (str.to.re "J") (re.range "K" "N") (str.to.re "P") (str.to.re "Q") (re.range "T" "Y")) (re.union (re.range "Q" "T") (str.to.re "V")) (re.range "1" "4") (re.range "B" "E") (str.to.re "\x0a"))))
(check-sat)
