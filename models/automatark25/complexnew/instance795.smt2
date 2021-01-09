(declare-const X String)
; /\x2eogx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.ogx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; www.*tool\x2Eworld2\x2Ecn
(assert (str.in.re X (re.++ (str.to.re "www") (re.* re.allchar) (str.to.re "tool.world2.cn\x13\x0a"))))
; ^\d{1,5}(\.\d{1,2})?$
(assert (str.in.re X (re.++ ((_ re.loop 1 5) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; Subject\x3a\s+BossUser-Agent\x3ASpediaUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "BossUser-Agent:SpediaUser-Agent:\x0a")))))
(check-sat)
