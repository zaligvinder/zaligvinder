(declare-const X String)
; vvvjkhmbgnbbw\x2fqbn\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in.re X (str.to.re "vvvjkhmbgnbbw/qbn\x1b(robert@blackcastlesoft.com)\x0a")))
; \r\nSTATUS\x3AUser-Agent\x3AHost\x3aReferer\x3A
(assert (str.in.re X (str.to.re "\x0d\x0aSTATUS:User-Agent:Host:Referer:\x0a")))
; ^([1-9]{1}[0-9]{0,7})+((,[1-9]{1}[0-9]{0,7}){0,1})+$
(assert (not (str.in.re X (re.++ (re.+ (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9")))) (re.+ (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 7) (re.range "0" "9"))))) (str.to.re "\x0a")))))
; ^(BG){0,1}([0-9]{9}|[0-9]{10})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "BG")) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 10 10) (re.range "0" "9"))) (str.to.re "\x0a"))))
; Host\x3A\s+User-Agent\x3A.*v\x3BApofisToolbarUser
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "v;ApofisToolbarUser\x0a"))))
(check-sat)
