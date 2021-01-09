(declare-const X String)
; /^\/[a-f0-9]{32}\/[0-9]$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/") (re.range "0" "9") (str.to.re "/Ui\x0a")))))
; dialupvpn\x5fpwd\x2Fiis2ebs\.aspOn-Line\x2E\x2E\x2EReport\x2Fnewsurfer4\x2FURLAuthorization\x3a
(assert (not (str.in.re X (str.to.re "dialupvpn_pwd/iis2ebs.aspOn-Line...Report/newsurfer4/URLAuthorization:\x0a"))))
; ProjectMyWebSearchSearchAssistantfast-look\x2EcomOneReporter
(assert (str.in.re X (str.to.re "ProjectMyWebSearchSearchAssistantfast-look.comOneReporter\x0a")))
; are\s+Toolbar\s+X-Mailer\x3AInformationsearchnuggetspastb\x2Efreeprod\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "are") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13Informationsearchnugget\x13spastb.freeprod.com\x0a")))))
(check-sat)
