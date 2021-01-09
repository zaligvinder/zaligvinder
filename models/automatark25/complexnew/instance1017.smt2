(declare-const X String)
; /filename=[\x22\x27]?\d\.exe[\x22\x27]?/Hi
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (re.range "0" "9") (str.to.re ".exe") (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/Hi\x0a")))))
; ToolbarServerserver\x7D\x7BSysuptime\x3A
(assert (not (str.in.re X (str.to.re "ToolbarServerserver}{Sysuptime:\x0a"))))
; /^([a-z0-9])(([\-.]|[_]+)?([a-z0-9]+))*(@)([a-z0-9])((([-]+)?([a-z0-9]+))?)*((.[a-z]{2,3})?(.[a-z]{2,6}))$/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (re.+ (str.to.re "_")) (str.to.re "-") (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (str.to.re "@") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.opt (re.++ (re.opt (re.+ (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))))) (str.to.re "/i\x0a") (re.opt (re.++ re.allchar ((_ re.loop 2 3) (re.range "a" "z")))) re.allchar ((_ re.loop 2 6) (re.range "a" "z"))))))
; /\/stat_u\/$/U
(assert (str.in.re X (str.to.re "//stat_u//U\x0a")))
; \r\nSTATUS\x3A\dHost\x3aReferer\x3AServerSubject\x3a
(assert (not (str.in.re X (re.++ (str.to.re "\x0d\x0aSTATUS:") (re.range "0" "9") (str.to.re "Host:Referer:ServerSubject:\x0a")))))
(check-sat)
