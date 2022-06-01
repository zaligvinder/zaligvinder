(declare-const X String)
; TM_SEARCH3SearchUser-Agent\u{3A}as\u{2E}starware\u{2E}comM\u{2E}zipCasinoResults_sq=aolsnssignin
(assert (not (str.in_re X (str.to_re "TM_SEARCH3SearchUser-Agent:as.starware.comM.zipCasinoResults_sq=aolsnssignin\u{a}"))))
; url=\swww\u{2E}alfacleaner\u{2E}com\d+Host\u{3A}\u{2F}products\u{2F}spyblocs\u{2F}
(assert (str.in_re X (re.++ (str.to_re "url=") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "www.alfacleaner.com") (re.+ (re.range "0" "9")) (str.to_re "Host:/products/spyblocs/\u{13}\u{a}"))))
; areHost\u{3A}e2give\.comHost\u{3a}X-Mailer\u{3A}sportsHost\u{3A}Toolbar
(assert (str.in_re X (str.to_re "areHost:e2give.comHost:X-Mailer:\u{13}sportsHost:Toolbar\u{a}")))
; Host\u{3A}\d+Black\s+daosearch\u{2E}comMyPostwww\.raxsearch\.com
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Black") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "daosearch.comMyPostwww.raxsearch.com\u{a}")))))
; ^([a-zA-Z]+)[0-9]*\.*[a-zA-Z0-9]+$|^[a-zA-Z]+[0-9]*$
(assert (not (str.in_re X (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.range "0" "9")) (re.* (str.to_re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.range "0" "9")) (str.to_re "\u{a}"))))))
(check-sat)
