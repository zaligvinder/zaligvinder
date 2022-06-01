(declare-const X String)
; www\u{2E}onetoolbar\u{2E}comcommunity
(assert (not (str.in_re X (str.to_re "www.onetoolbar.comcommunity\u{a}"))))
; User-Agent\u{3A}Host\u{3A}hasHost\u{3A}ComputerKeylogger\u{2E}com
(assert (str.in_re X (str.to_re "User-Agent:Host:hasHost:ComputerKeylogger.com\u{a}")))
; /\u{2e}class([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.class") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
(check-sat)
