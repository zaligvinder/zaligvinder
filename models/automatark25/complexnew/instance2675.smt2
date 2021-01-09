(declare-const X String)
; pjpoptwql\x2frlnjsportsHost\x3ASubject\x3aYAHOOdestroyed\x21
(assert (not (str.in.re X (str.to.re "pjpoptwql/rlnjsportsHost:Subject:YAHOOdestroyed!\x0a"))))
; /^User-Agent\x3a\x20[A-Z]{9}\x0d\x0a/Hm
(assert (str.in.re X (re.++ (str.to.re "/User-Agent: ") ((_ re.loop 9 9) (re.range "A" "Z")) (str.to.re "\x0d\x0a/Hm\x0a"))))
; (^\+?([1-8])?\d(\.\d+)?$)|(^-90$)|(^-(([1-8])?\d(\.\d+)?$))
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "+")) (re.opt (re.range "1" "8")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (str.to.re "-90") (re.++ (str.to.re "\x0a-") (re.opt (re.range "1" "8")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))))))))
(check-sat)
