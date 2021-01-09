(declare-const X String)
; Host\x3ADIMBUSsidebar\.activeshopper\.comUser-Agent\x3APcast
(assert (str.in.re X (str.to.re "Host:DIMBUSsidebar.activeshopper.comUser-Agent:Pcast\x0a")))
; [$][0 -9]+
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.+ (re.union (str.to.re "0") (re.range " " "9"))) (str.to.re "\x0a")))))
; /^\/\w{1,2}\/\w{1,3}\.class$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 1 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/") ((_ re.loop 1 3) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".class/U\x0a")))))
; (^([\w]+[^\W])([^\W]\.?)([\w]+[^\W]$))
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.opt (str.to.re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))))
; ^([0-9][0-9])[.]([0-9][0-9])[.]([0-9][0-9])$
(assert (not (str.in.re X (re.++ (str.to.re "..\x0a") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))))
(check-sat)
