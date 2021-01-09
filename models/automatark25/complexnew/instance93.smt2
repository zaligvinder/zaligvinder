(declare-const X String)
; <link href="../Common/Styles/iLienStyle.css" type="text/css" rel="stylesheet" />
(assert (str.in.re X (re.++ (str.to.re "<link href=\x22") re.allchar re.allchar (str.to.re "/Common/Styles/iLienStyle") re.allchar (str.to.re "css\x22 type=\x22text/css\x22 rel=\x22stylesheet\x22 />\x0a"))))
; toolbarplace\x2Ecom[^\n\r]*Server[^\n\r]*X-Mailer\x3a\sUser-Agent\x3aHost\x3ABar\x2Fnewsurfer4\x2F
(assert (str.in.re X (re.++ (str.to.re "toolbarplace.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Server") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "X-Mailer:\x13") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "User-Agent:Host:Bar/newsurfer4/\x0a"))))
; BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches\x2Eworldtostart\x2Ecom
(assert (str.in.re X (str.to.re "BasicYWRtaW46cGFzc3dvcmQeAnthMngrLOGsearches.worldtostart.com\x0a")))
(check-sat)
