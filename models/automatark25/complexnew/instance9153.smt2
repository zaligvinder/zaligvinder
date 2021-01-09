(declare-const X String)
; /User-Agent\:[^\x0a\x0d]+?Havij/H
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.+ (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Havij/H\x0a")))))
; (^\([0]\d{1}\))(\d{7}$)|(^\([0][2]\d{1}\))(\d{6,8}$)|([0][8][0][0])([\s])(\d{5,8}$)
(assert (str.in.re X (re.union (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "(0") ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re ")")) (re.++ ((_ re.loop 6 8) (re.range "0" "9")) (str.to.re "(02") ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re ")")) (re.++ (str.to.re "0800") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 5 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; /\x2eses([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ses") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^([a-zA-Z]+[\'\,\.\-]?[a-zA-Z ]*)+[ ]([a-zA-Z]+[\'\,\.\-]?[a-zA-Z ]+)+$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " "))))) (str.to.re " ") (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.union (str.to.re "'") (str.to.re ",") (str.to.re ".") (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " "))))) (str.to.re "\x0a"))))
; \[DRIVE\w+updates[^\n\r]*\x22StarLogger\x22User-Agent\x3AJMailUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "[DRIVE") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "updates") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "\x22StarLogger\x22User-Agent:JMailUser-Agent:\x0a"))))
(check-sat)
