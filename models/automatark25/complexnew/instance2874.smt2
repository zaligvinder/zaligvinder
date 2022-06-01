(declare-const X String)
; User-Agent\u{3A}User-Agent\u{3A}Host\u{3A}SoftActivityYeah\!
(assert (not (str.in_re X (str.to_re "User-Agent:User-Agent:Host:SoftActivity\u{13}Yeah!\u{a}"))))
; /\u{2e}wmv([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wmv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
