(declare-const X String)
; sbRedirectionsHost\u{3A}Host\u{3A}User-Agent\u{3A}hotbar%3fwww\u{2E}internetadvertisingcompany\u{2E}biz
(assert (str.in_re X (str.to_re "sbRedirections\u{1b}Host:Host:User-Agent:hotbar%3fwww.internetadvertisingcompany.biz\u{a}")))
; LOG\s+spyblini\u{2E}iniUpdateUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "LOG") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "spyblini.iniUpdateUser-Agent:\u{a}"))))
; Toolbarverpop\u{2E}popuptoast\u{2E}comtvshowticketscount\u{2E}yok\u{2E}com
(assert (str.in_re X (str.to_re "Toolbarverpop.popuptoast.comtvshowticketscount.yok.com\u{a}")))
(check-sat)
