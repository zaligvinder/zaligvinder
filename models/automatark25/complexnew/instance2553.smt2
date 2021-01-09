(declare-const X String)
; ^(\$?)((\d{1,20})|(\d{1,2}((,?\d{3}){0,6}))|(\d{3}((,?\d{3}){0,5})))$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.union ((_ re.loop 1 20) (re.range "0" "9")) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) ((_ re.loop 0 6) (re.++ (re.opt (str.to.re ",")) ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 0 5) (re.++ (re.opt (str.to.re ",")) ((_ re.loop 3 3) (re.range "0" "9")))))) (str.to.re "\x0a")))))
; YAHOODesktopHost\x3aLOGHost\x3AtvshowticketsResultsFROM\x3A
(assert (str.in.re X (str.to.re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\x0a")))
; /(Windows Phone|iPhone|BlackBerry|Mobile|Android|Opera Mini|Opera Mobile|SymbianOS)/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "Windows Phone") (str.to.re "iPhone") (str.to.re "BlackBerry") (str.to.re "Mobile") (str.to.re "Android") (str.to.re "Opera Mini") (str.to.re "Opera Mobile") (str.to.re "SymbianOS")) (str.to.re "/\x0a")))))
; ^\<(\w){1,}\>(.){0,}([\</]|[\<])(\w){1,}\>$
(assert (str.in.re X (re.++ (str.to.re "<") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ">") (re.* re.allchar) (re.union (str.to.re "<") (str.to.re "/")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ">\x0a"))))
; ^([^S]|S[^E]|SE[^P]).*
(assert (not (str.in.re X (re.++ (re.union (re.comp (str.to.re "S")) (re.++ (str.to.re "S") (re.comp (str.to.re "E"))) (re.++ (str.to.re "SE") (re.comp (str.to.re "P")))) (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
