(declare-const X String)
; YAHOODesktopHost\x3aLOGHost\x3AtvshowticketsResultsFROM\x3A
(assert (not (str.in.re X (str.to.re "YAHOODesktopHost:LOGHost:tvshowticketsResultsFROM:\x0a"))))
; ^([a-zA-Z0-9]+([\.+_-][a-zA-Z0-9]+)*)@(([a-zA-Z0-9]+((\.|[-]{1,2})[a-zA-Z0-9]+)*)\.[a-zA-Z]{2,6})$
(assert (not (str.in.re X (re.++ (str.to.re "@\x0a") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.union (str.to.re ".") (str.to.re "+") (str.to.re "_") (str.to.re "-")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to.re ".") ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.union (str.to.re ".") ((_ re.loop 1 2) (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))))
; ^\([0-9]{3}\)\s?[0-9]{3}(-|\s)?[0-9]{4}$|^[0-9]{3}-?[0-9]{3}-?[0-9]{4}$
(assert (str.in.re X (re.union (re.++ (str.to.re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^[5,6]\d{7}|^$
(assert (str.in.re X (re.union (re.++ (re.union (str.to.re "5") (str.to.re ",") (str.to.re "6")) ((_ re.loop 7 7) (re.range "0" "9"))) (str.to.re "\x0a"))))
; /\x2fAdmin\x2fFunctionsClient\x2f(check.txt|Select.php|Update.php)/iU
(assert (str.in.re X (re.++ (str.to.re "//Admin/FunctionsClient/") (re.union (re.++ (str.to.re "check") re.allchar (str.to.re "txt")) (re.++ (str.to.re "Select") re.allchar (str.to.re "php")) (re.++ (str.to.re "Update") re.allchar (str.to.re "php"))) (str.to.re "/iU\x0a"))))
(check-sat)
