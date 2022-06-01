(declare-const X String)
; User-Agent\u{3A}\s+Host\u{3A}cdpnode=FILESIZE\u{3E}toolsbar\u{2E}kuaiso\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:cdpnode=FILESIZE>\u{13}toolsbar.kuaiso.com\u{a}")))))
; X-FILTERED-BY-GHOST\u{3a}\d+yxegtd\u{2f}efcwgHost\u{3A}TPSystem
(assert (not (str.in_re X (re.++ (str.to_re "X-FILTERED-BY-GHOST:") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystem\u{a}")))))
(check-sat)
