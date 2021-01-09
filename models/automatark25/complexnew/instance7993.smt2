(declare-const X String)
; ^(([a-zA-Z0-9]+([\-])?[a-zA-Z0-9]+)+(\.)?)+[a-zA-Z]{2,6}$
(assert (str.in.re X (re.++ (re.+ (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.opt (str.to.re "-")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (re.opt (str.to.re ".")))) ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; User-Agent\x3A\w+Minutes\sHost\x3Awww\x2Eeblocs\x2EcomHost\x3ARunnerHost\x3a\x2Ehtml
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Minutes") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:www.eblocs.com\x1bHost:RunnerHost:.html\x0a"))))
; \x2Fbar_pl\x2Fshdoclc\.fcgi\w+Referer\x3A\d+\x2Fbar_pl\x2Fshdoclc\.fcgiareHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "/bar_pl/shdoclc.fcgi") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Referer:") (re.+ (re.range "0" "9")) (str.to.re "/bar_pl/shdoclc.fcgiareHost:\x0a")))))
; /\/\d+\.mp3$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re ".mp3/U\x0a")))))
; clvompycem\x2fcen\.vcnHost\x3AUser-Agent\x3A\x0d\x0a
(assert (not (str.in.re X (str.to.re "clvompycem/cen.vcnHost:User-Agent:\x0d\x0a\x0a"))))
(check-sat)
