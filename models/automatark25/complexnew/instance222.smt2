(declare-const X String)
; ^[0-9]{8}$
(assert (not (str.in_re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}")))))
; ^([0-9]*\,?[0-9]+|[0-9]+\,?[0-9]*)?$
(assert (not (str.in_re X (re.++ (re.opt (re.union (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ",")) (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (re.opt (str.to_re ",")) (re.* (re.range "0" "9"))))) (str.to_re "\u{a}")))))
; User-Agent\u{3A}\u{2F}rssMinutesansweras\u{2E}starware\u{2E}comFictionalHost\u{3A}Host\u{3A}
(assert (not (str.in_re X (str.to_re "User-Agent:/rssMinutesansweras.starware.comFictionalHost:Host:\u{a}"))))
(check-sat)
