(declare-const X String)
; ^[^_.]([a-zA-Z0-9_]*[.]?[a-zA-Z0-9_]+[^_]){2}@{1}[a-z0-9]+[.]{1}(([a-z]{2,3})|([a-z]{2,3}[.]{1}[a-z]{2,3}))$
(assert (not (str.in.re X (re.++ (re.union (str.to.re "_") (str.to.re ".")) ((_ re.loop 2 2) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (re.opt (str.to.re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (re.comp (str.to.re "_")))) ((_ re.loop 1 1) (str.to.re "@")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 1 1) (str.to.re ".")) (re.union ((_ re.loop 2 3) (re.range "a" "z")) (re.++ ((_ re.loop 2 3) (re.range "a" "z")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 2 3) (re.range "a" "z")))) (str.to.re "\x0a")))))
; Subject\x3A.*User-Agent\x3A.*ResultATTENTION\x3A
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.* re.allchar) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "ResultATTENTION:\x0a"))))
; / \x2D .{1,20}\x07(LAN|PROXY|MODEM|MODEM BUSY|UNKNOWN)\x07Win/
(assert (str.in.re X (re.++ (str.to.re "/ - ") ((_ re.loop 1 20) re.allchar) (str.to.re "\x07") (re.union (str.to.re "LAN") (str.to.re "PROXY") (str.to.re "MODEM") (str.to.re "MODEM BUSY") (str.to.re "UNKNOWN")) (str.to.re "\x07Win/\x0a"))))
; /filename=[^\n]*\x2ecsd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".csd/i\x0a"))))
(check-sat)
