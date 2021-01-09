(declare-const X String)
; snprtz\x7Cdialnoref\x3D\x25user\x5FidPG=SPEEDBAR
(assert (str.in.re X (str.to.re "snprtz|dialnoref=%user_idPG=SPEEDBAR\x0a")))
; Toolbarkl\x2Esearch\x2Eneed2find\x2EcomtvshowticketsToolbarUser-Agent\x3A\.compress
(assert (not (str.in.re X (str.to.re "Toolbarkl.search.need2find.comtvshowticketsToolbarUser-Agent:.compress\x0a"))))
; KeyloggerFSWcmdldap\x3A\x2F\x2FExploiterconnection\x2Ewww\x2Eoemji\x2Ecomzopabora\x2EinfoConnection
(assert (str.in.re X (str.to.re "KeyloggerFSWcmdldap://Exploiterconnection.www.oemji.comzopabora.infoConnection\x0a")))
; Host\x3a\w+Host\x3A\d+anHost\x3AspasHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "anHost:spasHost:\x0a")))))
(check-sat)
