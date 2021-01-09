(declare-const X String)
; (\d+)([,|.\d])*\d
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (str.to.re ",") (str.to.re "|") (str.to.re ".") (re.range "0" "9"))) (re.range "0" "9") (str.to.re "\x0a"))))
; TM_SEARCH3SearchUser-Agent\x3Aas\x2Estarware\x2EcomM\x2EzipCasinoResults_sq=aolsnssignin
(assert (str.in.re X (str.to.re "TM_SEARCH3SearchUser-Agent:as.starware.comM.zipCasinoResults_sq=aolsnssignin\x0a")))
(check-sat)
