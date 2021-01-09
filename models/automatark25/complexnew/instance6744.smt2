(declare-const X String)
; www\x2Esogou\x2Ecomix=WebsiteHost\x3aWeb-Mail
(assert (not (str.in.re X (str.to.re "www.sogou.comix=WebsiteHost:Web-Mail\x0a"))))
; ohgdhkzfhdzo\x2fuwpOK\r\nHost\x3A
(assert (not (str.in.re X (str.to.re "ohgdhkzfhdzo/uwpOK\x0d\x0aHost:\x0a"))))
; (DK-?)?([0-9]{2}\ ?){3}[0-9]{2}
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "DK") (re.opt (str.to.re "-")))) ((_ re.loop 3 3) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; Host\x3ASpyxpsp2-Host\x3aHost\x3Awjpropqmlpohj\x2floregister\.asp
(assert (str.in.re X (str.to.re "Host:Spyxpsp2-Host:Host:wjpropqmlpohj/loregister.asp\x0a")))
(check-sat)
