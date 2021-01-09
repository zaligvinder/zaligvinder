(declare-const X String)
; ^((([a-z0-9])+([\w.-]{1})?)+([^\W_]{1}))+@((([a-z0-9])+([\w-]{1})?)+([^\W_]{1}))+\.[a-z]{2,3}(\.[a-z]{2,4})?$
(assert (not (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt ((_ re.loop 1 1) (re.union (str.to.re ".") (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))) ((_ re.loop 1 1) (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "_"))))) (str.to.re "@") (re.+ (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.opt ((_ re.loop 1 1) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))) ((_ re.loop 1 1) (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "_"))))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 4) (re.range "a" "z")))) (str.to.re "\x0a")))))
; @{2}((\S)+)@{2}
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (str.to.re "@")) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) ((_ re.loop 2 2) (str.to.re "@")) (str.to.re "\x0a")))))
; /(bot|spider|crawler|google)/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "bot") (str.to.re "spider") (str.to.re "crawler") (str.to.re "google")) (str.to.re "/\x0a")))))
(check-sat)
