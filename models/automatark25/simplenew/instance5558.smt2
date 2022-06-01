(declare-const X String)
; \u{2F}GR.*Report.*Host\u{3A}Popup\.cfg
(assert (not (str.in_re X (re.++ (str.to_re "/GR") (re.* re.allchar) (str.to_re "Report") (re.* re.allchar) (str.to_re "Host:Popup.cfg\u{a}")))))
(check-sat)
