(declare-const X String)
; WindowsFrom\u{3A}\u{2F}CU1\-extreme\u{2E}biz
(assert (not (str.in_re X (str.to_re "WindowsFrom:/CU1-extreme.biz\u{a}"))))
; vb\s+Host\u{3A}Subject\u{3A}online-casino-searcher\.com
(assert (not (str.in_re X (re.++ (str.to_re "vb") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Subject:online-casino-searcher.com\u{a}")))))
; ^(-?)(,?)(\d{1,3}(\.\d{3})*|(\d+))(\,\d{2})?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.opt (str.to_re ",")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to_re ",") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
; /\u{2e}pui([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.pui") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; DigExtNetBus\u{5B}Static
(assert (not (str.in_re X (str.to_re "DigExtNetBus[Static\u{a}"))))
(check-sat)
