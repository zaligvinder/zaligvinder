(declare-const X String)
; snprtz\u{7C}dialnoref\u{3D}\u{25}user\u{5F}idPG=SPEEDBAR
(assert (str.in_re X (str.to_re "snprtz|dialnoref=%user_idPG=SPEEDBAR\u{a}")))
; Toolbarkl\u{2E}search\u{2E}need2find\u{2E}comtvshowticketsToolbarUser-Agent\u{3A}\.compress
(assert (not (str.in_re X (str.to_re "Toolbarkl.search.need2find.comtvshowticketsToolbarUser-Agent:.compress\u{a}"))))
; KeyloggerFSWcmdldap\u{3A}\u{2F}\u{2F}Exploiterconnection\u{2E}www\u{2E}oemji\u{2E}comzopabora\u{2E}infoConnection
(assert (str.in_re X (str.to_re "KeyloggerFSWcmdldap://Exploiterconnection.www.oemji.comzopabora.infoConnection\u{a}")))
; Host\u{3a}\w+Host\u{3A}\d+anHost\u{3A}spasHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "anHost:spasHost:\u{a}")))))
(check-sat)
