(declare-const X String)
; (\d+)([,|.\d])*\d
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (str.to_re ",") (str.to_re "|") (str.to_re ".") (re.range "0" "9"))) (re.range "0" "9") (str.to_re "\u{a}"))))
; TM_SEARCH3SearchUser-Agent\u{3A}as\u{2E}starware\u{2E}comM\u{2E}zipCasinoResults_sq=aolsnssignin
(assert (str.in_re X (str.to_re "TM_SEARCH3SearchUser-Agent:as.starware.comM.zipCasinoResults_sq=aolsnssignin\u{a}")))
(check-sat)
