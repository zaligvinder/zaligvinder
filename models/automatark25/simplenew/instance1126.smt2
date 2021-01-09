(declare-const X String)
; KeyloggerFSWcmdldap\x3A\x2F\x2FExploiterconnection\x2Ewww\x2Eoemji\x2Ecomzopabora\x2EinfoConnection
(assert (not (str.in.re X (str.to.re "KeyloggerFSWcmdldap://Exploiterconnection.www.oemji.comzopabora.infoConnection\x0a"))))
(check-sat)
