(declare-const X String)
; \x2FGR.*Report.*Host\x3APopup\.cfg
(assert (not (str.in.re X (re.++ (str.to.re "/GR") (re.* re.allchar) (str.to.re "Report") (re.* re.allchar) (str.to.re "Host:Popup.cfg\x0a")))))
(check-sat)
