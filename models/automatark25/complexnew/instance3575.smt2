(declare-const X String)
; ^[A-G](b|#)?((m(aj)?|M|aug|dim|sus)([2-7]|9|13)?)?(\/[A-G](b|#)?)?$
(assert (not (str.in_re X (re.++ (re.range "A" "G") (re.opt (re.union (str.to_re "b") (str.to_re "#"))) (re.opt (re.++ (re.union (re.++ (str.to_re "m") (re.opt (str.to_re "aj"))) (str.to_re "M") (str.to_re "aug") (str.to_re "dim") (str.to_re "sus")) (re.opt (re.union (re.range "2" "7") (str.to_re "9") (str.to_re "13"))))) (re.opt (re.++ (str.to_re "/") (re.range "A" "G") (re.opt (re.union (str.to_re "b") (str.to_re "#"))))) (str.to_re "\u{a}")))))
; Host\u{3A}\d+Black\s+daosearch\u{2E}comMyPostwww\.raxsearch\.com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Black") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "daosearch.comMyPostwww.raxsearch.com\u{a}"))))
; ShadowNet\dsearchreslt\sTROJAN-Host\u{3A}YWRtaW46cGFzc3dvcmQ
(assert (str.in_re X (re.++ (str.to_re "ShadowNet") (re.range "0" "9") (str.to_re "searchreslt") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "TROJAN-Host:YWRtaW46cGFzc3dvcmQ\u{a}"))))
(check-sat)
