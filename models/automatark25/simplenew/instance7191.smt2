(declare-const X String)
; sbRedirectionsHost\u{3A}Host\u{3A}User-Agent\u{3A}hotbar%3fwww\u{2E}internetadvertisingcompany\u{2E}biz
(assert (str.in_re X (str.to_re "sbRedirections\u{1b}Host:Host:User-Agent:hotbar%3fwww.internetadvertisingcompany.biz\u{a}")))
(check-sat)
