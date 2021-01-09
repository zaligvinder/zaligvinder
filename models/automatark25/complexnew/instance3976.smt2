(declare-const X String)
; /\x2ewmf([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.wmf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^[A-z]?\d{8}[A-z]$
(assert (not (str.in.re X (re.++ (re.opt (re.range "A" "z")) ((_ re.loop 8 8) (re.range "0" "9")) (re.range "A" "z") (str.to.re "\x0a")))))
; <([^<>\s]*)(\s[^<>]*)?>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.union (str.to.re "<") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.* (re.union (str.to.re "<") (str.to.re ">"))))) (str.to.re ">\x0a")))))
; /^\/\d{2,4}\.xap$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 2 4) (re.range "0" "9")) (str.to.re ".xap/U\x0a")))))
; ^([Vv]+(erdade(iro)?)?|[Ff]+(als[eo])?|[Tt]+(rue)?|0|[\+\-]?1)$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.+ (re.union (str.to.re "V") (str.to.re "v"))) (re.opt (re.++ (str.to.re "erdade") (re.opt (str.to.re "iro"))))) (re.++ (re.+ (re.union (str.to.re "F") (str.to.re "f"))) (re.opt (re.++ (str.to.re "als") (re.union (str.to.re "e") (str.to.re "o"))))) (re.++ (re.+ (re.union (str.to.re "T") (str.to.re "t"))) (re.opt (str.to.re "rue"))) (str.to.re "0") (re.++ (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (str.to.re "1"))) (str.to.re "\x0a")))))
(check-sat)
