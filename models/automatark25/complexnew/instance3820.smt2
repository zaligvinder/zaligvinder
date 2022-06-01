(declare-const X String)
; comLOGUser-Agent\u{3A}istsvcwww\u{2E}oemji\u{2E}comSystemSleuth
(assert (not (str.in_re X (str.to_re "comLOGUser-Agent:istsvcwww.oemji.comSystemSleuth\u{13}\u{a}"))))
; ^(\d{4},?)+$
(assert (str.in_re X (re.++ (re.+ (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re ",")))) (str.to_re "\u{a}"))))
; ^([1-9]|1[0-2])$
(assert (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "\u{a}"))))
; ^\d{5}(\d{3})?$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt ((_ re.loop 3 3) (re.range "0" "9"))) (str.to_re "\u{a}")))))
; to\s+Host\u{3A}WeHost\u{3a}
(assert (str.in_re X (re.++ (str.to_re "to") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:WeHost:\u{a}"))))
(check-sat)
