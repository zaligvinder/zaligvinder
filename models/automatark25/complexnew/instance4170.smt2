(declare-const X String)
; User-Agent\u{3A}3AHelpAgent\u{3A}Host\u{3A}searchresltHost\u{3A}notification
(assert (str.in_re X (str.to_re "User-Agent:3AHelpAgent:Host:searchresltHost:notification\u{13}\u{a}")))
; /filename=[^\n]*\u{2e}sln/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".sln/i\u{a}"))))
; ^([A-Z]{2}\s?(\d{2})?(-)?([A-Z]{1}|\d{1})?([A-Z]{1}|\d{1})?( )?(\d{4}))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) (re.range "A" "Z")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (str.to_re "-")) (re.opt (re.union ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.opt (re.union ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.opt (str.to_re " ")) ((_ re.loop 4 4) (re.range "0" "9")))))
; /\u{2f}[\w\u{2d}]*\u{2e}\u{2e}$/mU
(assert (str.in_re X (re.++ (str.to_re "//") (re.* (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "../mU\u{a}"))))
(check-sat)
