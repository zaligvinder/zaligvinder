(declare-const X String)
; toolbarplace\x2Ecom.*TencentTraveler\d+\x2Fnewsurfer4\x2F.*BysooTBADdcww\x2Edmcast\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.* re.allchar) (str.to.re "TencentTraveler") (re.+ (re.range "0" "9")) (str.to.re "/newsurfer4/") (re.* re.allchar) (str.to.re "BysooTBADdcww.dmcast.com\x0a"))))
; Host\x3A\supgrade\x2Eqsrch\x2Einfox2Fie\.aspdcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "upgrade.qsrch.infox2Fie.aspdcww.dmcast.com\x0a")))))
(check-sat)
