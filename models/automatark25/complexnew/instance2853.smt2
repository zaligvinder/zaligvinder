(declare-const X String)
; ^([30|36|38]{2})([0-9]{12})$
(assert (not (str.in_re X (re.++ ((_ re.loop 2 2) (re.union (str.to_re "3") (str.to_re "0") (str.to_re "|") (str.to_re "6") (str.to_re "8"))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to_re "\u{a}")))))
; /\u{2f}blackmuscats?\u{3f}\d/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//blackmuscat") (re.opt (str.to_re "s")) (str.to_re "?") (re.range "0" "9") (str.to_re "/Ui\u{a}")))))
; User-Agent\u{3a}User-Agent\u{3A}Report\u{2E}Host\u{3A}fhfksjzsfu\u{2f}ahm\.uqs
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:Report.Host:fhfksjzsfu/ahm.uqs\u{a}")))
(check-sat)
