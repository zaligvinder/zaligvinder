(declare-const X String)
; Client\d+Subject\u{3A}isBysooTBwhenu\u{2E}comToolbar
(assert (not (str.in_re X (re.++ (str.to_re "Client") (re.+ (re.range "0" "9")) (str.to_re "Subject:isBysooTBwhenu.com\u{1b}Toolbar\u{a}")))))
; clvompycem\u{2f}cen\.vcnHost\u{3A}User-Agent\u{3A}\u{d}\u{a}
(assert (str.in_re X (str.to_re "clvompycem/cen.vcnHost:User-Agent:\u{d}\u{a}\u{a}")))
; ^(([a-z])+.)+[A-Z]([a-z])+$
(assert (not (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.range "a" "z")) re.allchar)) (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to_re "\u{a}")))))
(check-sat)
