(declare-const X String)
; \x2APORT3\x2A\s+Warezxmlns\x3A%3flinkautomatici\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "*PORT3*") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Warezxmlns:%3flinkautomatici.com\x0a")))))
; /myversion\x7c(\d\x2e){3}\d\x0d\x0a/
(assert (not (str.in.re X (re.++ (str.to.re "/myversion|") ((_ re.loop 3 3) (re.++ (re.range "0" "9") (str.to.re "."))) (re.range "0" "9") (str.to.re "\x0d\x0a/\x0a")))))
; Host\x3a\s+ToolBarX-Mailer\x3aUser-Agent\x3AMM_RECO\x2EEXE
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ToolBarX-Mailer:\x13User-Agent:MM_RECO.EXE\x0a"))))
(check-sat)
