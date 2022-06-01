(declare-const X String)
; /\u{2e}xls([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.xls") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; \u{23}\u{23}\u{23}\u{23}Host\u{3A}Subject\u{3A}www\u{2E}pcsentinelsoftware\u{2E}comHost\u{3A}WeHost\u{3a}www\u{2E}wowokay\u{2E}com/wowokaybar\u{2E}php
(assert (str.in_re X (str.to_re "####Host:Subject:www.pcsentinelsoftware.comHost:WeHost:www.wowokay.com/wowokaybar.php\u{a}")))
; /\u{2e}htc([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.htc") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; BysooTBwhenu\u{2E}comToolbarWeAgentUser-Agent\u{3a}hasHost\u{3a}toWebupdate\.cgithis
(assert (str.in_re X (str.to_re "BysooTBwhenu.com\u{1b}ToolbarWeAgentUser-Agent:hasHost:toWebupdate.cgithis\u{a}")))
(check-sat)
