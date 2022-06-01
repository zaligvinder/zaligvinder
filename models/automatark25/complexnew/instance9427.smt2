(declare-const X String)
; User-Agent\u{3A}SpyPORT-ischeck=Component
(assert (not (str.in_re X (str.to_re "User-Agent:SpyPORT-ischeck=Component\u{a}"))))
; ^\d{3}\s?\d{3}\s?\d{3}$
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^.*(yourdomain.com).*$
(assert (not (str.in_re X (re.++ (re.* re.allchar) (re.* re.allchar) (str.to_re "\u{a}yourdomain") re.allchar (str.to_re "com")))))
; /\bobj\u{a}\u{20}*?\/Pattern\u{20}*?\u{a}endobj\b/i
(assert (not (str.in_re X (re.++ (str.to_re "/obj\u{a}") (re.* (str.to_re " ")) (str.to_re "/Pattern") (re.* (str.to_re " ")) (str.to_re "\u{a}endobj/i\u{a}")))))
; Host\u{3A}\s+Boss\s+media\u{2E}top-banners\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Boss") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "media.top-banners.com\u{a}"))))
(check-sat)
