(declare-const X String)
; YWRtaW46YWRtaW4www\u{2E}e-finder\u{2E}ccNSIS_DOWNLOADHost\u{3A}
(assert (str.in_re X (str.to_re "YWRtaW46YWRtaW4www.e-finder.ccNSIS_DOWNLOADHost:\u{a}")))
; /^\u{2F}40e800[0-9A-F]{30,}$/Ui
(assert (str.in_re X (re.++ (str.to_re "//40e800/Ui\u{a}") ((_ re.loop 30 30) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.* (re.union (re.range "0" "9") (re.range "A" "F"))))))
(check-sat)
