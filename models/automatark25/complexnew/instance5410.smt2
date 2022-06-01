(declare-const X String)
; WebsiteUser-Agent\u{3A}httphostfast-look\u{2E}com
(assert (not (str.in_re X (str.to_re "WebsiteUser-Agent:httphostfast-look.com\u{a}"))))
; ^(\d){8}$
(assert (str.in_re X (re.++ ((_ re.loop 8 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
; rank\u{2E}toolbarbrowser\u{2E}comlnzzlnbk\u{2f}pkrm\.fin
(assert (not (str.in_re X (str.to_re "rank.toolbarbrowser.comlnzzlnbk/pkrm.fin\u{a}"))))
; /^\u{2f}[0-9a-z]{30}$/Umi
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 30 30) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to_re "/Umi\u{a}")))))
(check-sat)
