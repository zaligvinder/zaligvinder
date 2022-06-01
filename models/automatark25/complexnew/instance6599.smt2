(declare-const X String)
; Ts2\u{2F}\s+insertinfoSnakeUser-Agent\u{3A}
(assert (str.in_re X (re.++ (str.to_re "Ts2/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "insertinfoSnakeUser-Agent:\u{a}"))))
; /\u{2f}\{\u{23}[^\u{2f}{}]+?\}(\.action)?\u{2f}?$/miU
(assert (not (str.in_re X (re.++ (str.to_re "//{#") (re.+ (re.union (str.to_re "/") (str.to_re "{") (str.to_re "}"))) (str.to_re "}") (re.opt (str.to_re ".action")) (re.opt (str.to_re "/")) (str.to_re "/miU\u{a}")))))
; HWPE[^\n\r]*Basic.*LOGsearches\u{2E}worldtostart\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "HWPE") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Basic") (re.* re.allchar) (str.to_re "LOGsearches.worldtostart.com\u{a}"))))
; client\u{2E}baigoo\u{2E}comUser\u{3A}
(assert (not (str.in_re X (str.to_re "client.baigoo.comUser:\u{a}"))))
; \u{23}\u{23}\u{23}\u{23}Host\u{3A}Subject\u{3A}www\u{2E}pcsentinelsoftware\u{2E}comHost\u{3A}WeHost\u{3a}www\u{2E}wowokay\u{2E}com/wowokaybar\u{2E}php
(assert (not (str.in_re X (str.to_re "####Host:Subject:www.pcsentinelsoftware.comHost:WeHost:www.wowokay.com/wowokaybar.php\u{a}"))))
(check-sat)
