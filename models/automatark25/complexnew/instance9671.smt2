(declare-const X String)
; update\.cgi\s+wwwProbnymomspyo\x2fzowy
(assert (str.in.re X (re.++ (str.to.re "update.cgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wwwProbnymomspyo/zowy\x0a"))))
; ^(\d){7,8}$
(assert (str.in.re X (re.++ ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; /^("(\\"|[^"])*"|'(\\'|[^'])*'|[^\n])*(\n|$)/gm
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (re.++ (str.to.re "\x22") (re.* (re.union (str.to.re "\x5c\x22") (re.comp (str.to.re "\x22")))) (str.to.re "\x22")) (re.++ (str.to.re "'") (re.* (re.union (str.to.re "\x5c'") (re.comp (str.to.re "'")))) (str.to.re "'")) (re.comp (str.to.re "\x0a")))) (str.to.re "\x0a/gm\x0a")))))
; [DJF]{1}[0-9]{5,8}
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "D") (str.to.re "J") (str.to.re "F"))) ((_ re.loop 5 8) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
