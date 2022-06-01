(declare-const X String)
; /\u{2e}air([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.air") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; http\s+Host\u{3A}[^\n\r]*WinInet3Azopabora\u{2E}info\u{2F}notifier\u{2F}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "http") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "WinInet3Azopabora.info/notifier/User-Agent:\u{a}")))))
; (\d{5})[\.\-\+ ]?(\d{4})?
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.union (str.to_re ".") (str.to_re "-") (str.to_re "+") (str.to_re " "))) (re.opt ((_ re.loop 4 4) (re.range "0" "9"))) (str.to_re "\u{a}"))))
; www\u{2E}onlinecasinoextra\u{2E}comWindows
(assert (not (str.in_re X (str.to_re "www.onlinecasinoextra.comWindows\u{a}"))))
(check-sat)
