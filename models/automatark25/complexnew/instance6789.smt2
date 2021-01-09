(declare-const X String)
; /^([a-zA-Z0-9])(([\-.]|[_]+)?([a-zA-Z0-9]+))*(@){1}[a-z0-9]+[.]{1}(([a-z]{2,3})|([a-z]{2,3}[.]{1}[a-z]{2,3}))$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (re.+ (str.to.re "_")) (str.to.re "-") (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) ((_ re.loop 1 1) (str.to.re "@")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 1 1) (str.to.re ".")) (re.union ((_ re.loop 2 3) (re.range "a" "z")) (re.++ ((_ re.loop 2 3) (re.range "a" "z")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 3) (re.range "a" "z")))) (str.to.re "/\x0a"))))
; DesktopBladeclient=wwwHello\x2Exmlns\x3A
(assert (str.in.re X (str.to.re "DesktopBladeclient=wwwHello.xmlns:\x0a")))
; MyBrowserSbAtsHost\x3A
(assert (not (str.in.re X (str.to.re "MyBrowserSbAtsHost:\x0a"))))
; ^((00|\+)49)?(0?[2-9][0-9]{1,})$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "00") (str.to.re "+")) (str.to.re "49"))) (str.to.re "\x0a") (re.opt (str.to.re "0")) (re.range "2" "9") (re.+ (re.range "0" "9")))))
; ^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "_") (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.* (re.++ (str.to.re ".") (re.+ (re.union (str.to.re "_") (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (re.+ (re.++ (str.to.re ".") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))))) (str.to.re "\x0a")))))
(check-sat)
