(declare-const X String)
; awbeta\.net-nucleus\.com\d
(assert (str.in_re X (re.++ (str.to_re "awbeta.net-nucleus.com") (re.range "0" "9") (str.to_re "\u{a}"))))
; toolbarplace\u{2E}com.*Host\u{3A}\dgpstool\u{2e}globaladserver\u{2e}com
(assert (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.* re.allchar) (str.to_re "Host:") (re.range "0" "9") (str.to_re "gpstool.globaladserver.com\u{a}"))))
(check-sat)
