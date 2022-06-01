(declare-const X String)
; /\?new\=.*?\:.*?\&v\=\d\.\d\.\d\&av\=/U
(assert (not (str.in_re X (re.++ (str.to_re "/?new=") (re.* re.allchar) (str.to_re ":") (re.* re.allchar) (str.to_re "&v=") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re ".") (re.range "0" "9") (str.to_re "&av=/U\u{a}")))))
; www\u{2E}sogou\u{2E}comix=WebsiteHost\u{3a}Web-Mail
(assert (str.in_re X (str.to_re "www.sogou.comix=WebsiteHost:Web-Mail\u{a}")))
; Host\u{3a}OnlineUser-Agent\u{3A}www\u{2E}vip-se\u{2E}com
(assert (not (str.in_re X (str.to_re "Host:OnlineUser-Agent:www.vip-se.com\u{13}\u{a}"))))
; ^[A-Za-z]{1,2}[0-9A-Za-z]{1,2}[ ]?[0-9]{0,1}[A-Za-z]{2}$
(assert (str.in_re X (re.++ ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to_re " ")) (re.opt (re.range "0" "9")) ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}"))))
; /\r\nReferer\u{3A}\u{20}http\u{3A}\u{2F}\u{2f}[a-z0-9\u{2d}\u{2e}]+\u{2F}\u{3F}do\u{3D}payment\u{26}ver\u{3D}\d+\u{26}sid\u{3D}\d+\u{26}sn\u{3D}\d+\r\n/H
(assert (str.in_re X (re.++ (str.to_re "/\u{d}\u{a}Referer: http://") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re "/?do=payment&ver=") (re.+ (re.range "0" "9")) (str.to_re "&sid=") (re.+ (re.range "0" "9")) (str.to_re "&sn=") (re.+ (re.range "0" "9")) (str.to_re "\u{d}\u{a}/H\u{a}"))))
(check-sat)
