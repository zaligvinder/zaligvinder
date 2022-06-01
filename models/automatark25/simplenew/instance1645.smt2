(declare-const X String)
; KeyloggerFSWcmdldap\u{3A}\u{2F}\u{2F}Exploiterconnection\u{2E}www\u{2E}oemji\u{2E}comzopabora\u{2E}infoConnection
(assert (not (str.in_re X (str.to_re "KeyloggerFSWcmdldap://Exploiterconnection.www.oemji.comzopabora.infoConnection\u{a}"))))
(check-sat)
