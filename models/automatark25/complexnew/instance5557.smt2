(declare-const X String)
; vvvjkhmbgnbbw\u{2f}qbn\u{28}robert\u{40}blackcastlesoft\u{2E}com\u{29}
(assert (str.in_re X (str.to_re "vvvjkhmbgnbbw/qbn\u{1b}(robert@blackcastlesoft.com)\u{a}")))
; \r\nSTATUS\u{3A}User-Agent\u{3A}Host\u{3a}Referer\u{3A}
(assert (str.in_re X (str.to_re "\u{d}\u{a}STATUS:User-Agent:Host:Referer:\u{a}")))
; ^([1-9]{1}[0-9]{0,7})+((,[1-9]{1}[0-9]{0,7}){0,1})+$
(assert (not (str.in_re X (re.++ (re.+ (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9")))) (re.+ (re.opt (re.++ (str.to_re ",") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9"))))) (str.to_re "\u{a}")))))
; ^(BG){0,1}([0-9]{9}|[0-9]{10})$
(assert (str.in_re X (re.++ (re.opt (str.to_re "BG")) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to_re "\u{a}"))))
; Host\u{3A}\s+User-Agent\u{3A}.*v\u{3B}ApofisToolbarUser
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "v;ApofisToolbarUser\u{a}"))))
(check-sat)
