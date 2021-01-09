(declare-const X String)
; \x7D\x7BPort\x3AHost\x3Amqnqgijmng\x2fojNavhelperUser-Agent\x3A
(assert (str.in.re X (str.to.re "}{Port:Host:mqnqgijmng/ojNavhelperUser-Agent:\x0a")))
; ^[A-Z]{3}(\d|[A-Z]){8,12}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) ((_ re.loop 8 12) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; /\x2eappendChild.*?\x2eid.{0,200}?(offset|client)(Height|Left|Parent|Top|Width).{0,200}?(offset|client)(Height|Left|Parent|Top|Width)/is
(assert (not (str.in.re X (re.++ (str.to.re "/.appendChild") (re.* re.allchar) (str.to.re ".id") ((_ re.loop 0 200) re.allchar) (re.union (str.to.re "offset") (str.to.re "client")) (re.union (str.to.re "Height") (str.to.re "Left") (str.to.re "Parent") (str.to.re "Top") (str.to.re "Width")) ((_ re.loop 0 200) re.allchar) (re.union (str.to.re "offset") (str.to.re "client")) (re.union (str.to.re "Height") (str.to.re "Left") (str.to.re "Parent") (str.to.re "Top") (str.to.re "Width")) (str.to.re "/is\x0a")))))
; ^((0?[1-9])|((1|2)[0-9])|30|31)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (str.to.re "30") (str.to.re "31")) (str.to.re "\x0a")))))
(check-sat)
