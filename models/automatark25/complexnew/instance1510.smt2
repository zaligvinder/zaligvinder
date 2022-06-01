(declare-const X String)
; Admin\s+daosearch\u{2E}comMyPostwww\.raxsearch\.comref\u{3D}\u{25}user\u{5F}id
(assert (str.in_re X (re.++ (str.to_re "Admin") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "daosearch.comMyPostwww.raxsearch.comref=%user_id\u{a}"))))
; [AaEeIiOoUuYy]
(assert (str.in_re X (re.++ (re.union (str.to_re "A") (str.to_re "a") (str.to_re "E") (str.to_re "e") (str.to_re "I") (str.to_re "i") (str.to_re "O") (str.to_re "o") (str.to_re "U") (str.to_re "u") (str.to_re "Y") (str.to_re "y")) (str.to_re "\u{a}"))))
; zopabora\u{2E}infocomhoroscopeTravelInsidefromUser-Agent\u{3A}From\u{3A}www\u{2E}ZSearchResults\u{2E}comExplorer
(assert (not (str.in_re X (str.to_re "zopabora.infocomhoroscopeTravelInsidefromUser-Agent:From:www.ZSearchResults.com\u{13}Explorer\u{a}"))))
; User-Agent\u{3A}\s+community\d+
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "community") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^(((\d|([a-f]|[A-F])){2}:){5}(\d|([a-f]|[A-F])){2})$|^(((\d|([a-f]|[A-F])){2}-){5}(\d|([a-f]|[A-F])){2})$|^$
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re ":"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "-"))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (str.to_re "\u{a}")))))
(check-sat)
