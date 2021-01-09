(declare-const X String)
; upgrade\x2Eqsrch\x2Einfox2Fie\.aspdcww\x2Edmcast\x2Ecom
(assert (not (str.in.re X (str.to.re "upgrade.qsrch.infox2Fie.aspdcww.dmcast.com\x0a"))))
; ChildWebGuardian\d+Subject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to.re "Subject:\x0a")))))
; MyBrowserSbAtsHost\x3A
(assert (not (str.in.re X (str.to.re "MyBrowserSbAtsHost:\x0a"))))
; FCTB1\stoolbar\.anwb\.nlrichfind\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "FCTB1") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nlrichfind.com\x0a"))))
(check-sat)
