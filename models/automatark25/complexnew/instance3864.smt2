(declare-const X String)
; (\d{3}\-\d{2}\-\d{4})
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))))))
; TOOLBAR\s+dist\u{2E}atlas\u{2D}ia\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "TOOLBAR") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "dist.atlas-ia.com\u{a}"))))
; Host\u{3A}act=Host\u{3a}User-Agent\u{3A}User-Agent\u{3A}Liteselect\u{2F}Get
(assert (str.in_re X (str.to_re "Host:act=Host:User-Agent:User-Agent:Liteselect/Get\u{a}")))
; \u{7C}Connected\s+adblock\u{2E}linkz\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "|Connected") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "adblock.linkz.com\u{a}")))))
(check-sat)
