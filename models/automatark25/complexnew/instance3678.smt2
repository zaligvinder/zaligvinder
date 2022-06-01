(declare-const X String)
; KeyloggerFSWcmdldap\u{3A}\u{2F}\u{2F}Exploiterconnection\u{2E}www\u{2E}oemji\u{2E}comzopabora\u{2E}infoConnection
(assert (not (str.in_re X (str.to_re "KeyloggerFSWcmdldap://Exploiterconnection.www.oemji.comzopabora.infoConnection\u{a}"))))
; (.|[\r\n]){1,5}
(assert (not (str.in_re X (re.++ ((_ re.loop 1 5) (re.union re.allchar (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "\u{a}")))))
; Host\u{3A}Desktopcargo=report\<\u{2F}title\>Host\u{3a}\.fcgiupgrade\u{2E}qsrch\u{2E}info
(assert (not (str.in_re X (str.to_re "Host:Desktopcargo=report</title>Host:.fcgiupgrade.qsrch.info\u{a}"))))
; ^(\d{3}-\d{2}-\d{4})|(\d{3}\d{2}\d{4})$
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9")))))))
(check-sat)
