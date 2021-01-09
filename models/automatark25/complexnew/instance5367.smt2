(declare-const X String)
; ^(GB)?([0-9]{9})$
(assert (str.in.re X (re.++ (re.opt (str.to.re "GB")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^[a-zA-Z]+((\s|\-|\')[a-zA-Z]+)?$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.++ (re.union (str.to.re "-") (str.to.re "'") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re "\x0a"))))
; \x2FrssScaneradfsgecoiwnf\x7D\x7BTrojan\x3AlogsHost\x3a
(assert (not (str.in.re X (str.to.re "/rssScaneradfsgecoiwnf\x1b}{Trojan:logsHost:\x0a"))))
(check-sat)
