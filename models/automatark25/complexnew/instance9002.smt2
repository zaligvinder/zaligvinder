(declare-const X String)
; Subject\u{3a}\d+zmnjgmomgbdz\u{2f}zzmw\.gzt
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "zmnjgmomgbdz/zzmw.gzt\u{a}"))))
; Referer\u{3A}Host\u{3A}Host\u{3A}Subject\u{3A}online-casino-searcher\.comnetid=Excite
(assert (str.in_re X (str.to_re "Referer:Host:Host:Subject:online-casino-searcher.comnetid=Excite\u{a}")))
; Agent\s+\u{2F}toolbar\u{2F}ico\u{2F}
(assert (str.in_re X (re.++ (str.to_re "Agent") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "/toolbar/ico/\u{a}"))))
; </?(\w+)(\s+\w+=(\w+|"[^"]*"|'[^']*'))*>
(assert (str.in_re X (re.++ (str.to_re "<") (re.opt (str.to_re "/")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "=") (re.union (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.++ (str.to_re "\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}")) (re.++ (str.to_re "'") (re.* (re.comp (str.to_re "'"))) (str.to_re "'"))))) (str.to_re ">\u{a}"))))
(check-sat)
