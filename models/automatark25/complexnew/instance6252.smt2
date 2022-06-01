(declare-const X String)
; (^\([0]\d{2}\))(\d{6,7}$)
(assert (str.in_re X (re.++ ((_ re.loop 6 7) (re.range "0" "9")) (str.to_re "\u{a}(0") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ")"))))
; ^\$?\d{1,2}\,\d{3}?\,\d{3}?(\.(\d{2}))$|^\$?\d{1,3}?\,\d{3}?(\.(\d{2}))$|^\$?\d{1,3}?(\.(\d{2}))$
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "$")) ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "$")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "$")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re "\u{a}.") ((_ re.loop 2 2) (re.range "0" "9"))))))
; \u{2F}cs\u{2F}pop4\u{2F}\s+data\.warezclient\.com
(assert (str.in_re X (re.++ (str.to_re "/cs/pop4/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "data.warezclient.com\u{a}"))))
; client\u{2E}baigoo\u{2E}comUser\u{3A}
(assert (str.in_re X (str.to_re "client.baigoo.comUser:\u{a}")))
; ^([0-1])*$
(assert (not (str.in_re X (re.++ (re.* (re.range "0" "1")) (str.to_re "\u{a}")))))
(check-sat)
