(declare-const X String)
; /\u{2e}flv([\?\u{5c}\u{2f}]|$)/Umsi
(assert (not (str.in_re X (re.++ (str.to_re "/.flv") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/Umsi\u{a}")))))
; IDENTIFY666User-Agent\u{3A}\u{5B}StaticSend=Host\u{3A}www\.iggsey\.com
(assert (not (str.in_re X (str.to_re "IDENTIFY666User-Agent:[StaticSend=Host:www.iggsey.com\u{a}"))))
; Ready[^\n\r]*User-Agent\u{3A}\s+Client\dFrom\u{3A}Webtool\u{2E}world2\u{2E}cnUser-Agent\u{3A}User-Agent\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "Ready") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Client") (re.range "0" "9") (str.to_re "From:Webtool.world2.cn\u{13}User-Agent:User-Agent:\u{a}")))))
; Subject\u{3A}\d+media\u{2E}dxcdirect\u{2E}com\.smx\?PASSW=SAHHost\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.range "0" "9")) (str.to_re "media.dxcdirect.com.smx?PASSW=SAHHost:\u{a}")))))
; DigExtNetBus\u{5B}Static
(assert (str.in_re X (str.to_re "DigExtNetBus[Static\u{a}")))
(check-sat)
