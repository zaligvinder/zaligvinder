(declare-const X String)
; /\x2ecis([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.cis") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Servidor\x2Ehome\x2Eedonkey\x2Ecom
(assert (str.in.re X (str.to.re "Servidor.\x13home.edonkey.com\x0a")))
; Host\x3APG=SPEEDBARReferer\x3a
(assert (not (str.in.re X (str.to.re "Host:PG=SPEEDBARReferer:\x0a"))))
; /^\/ABs[A-Za-z0-9]+$/U
(assert (str.in.re X (re.++ (str.to.re "//ABs") (re.+ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; ^(GB)?(\ )?[0-9]\d{2}(\ )?[0-9]\d{3}(\ )?(0[0-9]|[1-8][0-9]|9[0-6])(\ )?([0-9]\d{2})?|(GB)?(\ )?GD(\ )?([0-4][0-9][0-9])|(GB)?(\ )?HA(\ )?([5-9][0-9][0-9])$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "GB")) (re.opt (str.to.re " ")) (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")) (re.range "0" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re " ")) (re.union (re.++ (str.to.re "0") (re.range "0" "9")) (re.++ (re.range "1" "8") (re.range "0" "9")) (re.++ (str.to.re "9") (re.range "0" "6"))) (re.opt (str.to.re " ")) (re.opt (re.++ (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (re.opt (str.to.re "GB")) (re.opt (str.to.re " ")) (str.to.re "GD") (re.opt (str.to.re " ")) (re.range "0" "4") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (str.to.re "GB")) (re.opt (str.to.re " ")) (str.to.re "HA") (re.opt (str.to.re " ")) (str.to.re "\x0a") (re.range "5" "9") (re.range "0" "9") (re.range "0" "9")))))
(check-sat)
