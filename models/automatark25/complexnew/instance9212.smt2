(declare-const X String)
; Hours\w+User-Agent\x3AChildWebGuardian
(assert (str.in.re X (re.++ (str.to.re "Hours") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "User-Agent:ChildWebGuardian\x0a"))))
; /\x2emim([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mim") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; [a-z]{3,4}s?:\/\/[-\w.]+(\/[-.\w%&=?]+)*
(assert (not (str.in.re X (re.++ ((_ re.loop 3 4) (re.range "a" "z")) (re.opt (str.to.re "s")) (str.to.re "://") (re.+ (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.++ (str.to.re "/") (re.+ (re.union (str.to.re "-") (str.to.re ".") (str.to.re "%") (str.to.re "&") (str.to.re "=") (str.to.re "?") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a")))))
; www\.thecommunicator\.net[^\n\r]*iufilfwulmfi\x2friuf\.lio
(assert (str.in.re X (re.++ (str.to.re "www.thecommunicator.net") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "iufilfwulmfi/riuf.lio\x0a"))))
; TM_SEARCH3SearchUser-Agent\x3Aas\x2Estarware\x2EcomM\x2EzipCasinoResults_sq=aolsnssignin
(assert (str.in.re X (str.to.re "TM_SEARCH3SearchUser-Agent:as.starware.comM.zipCasinoResults_sq=aolsnssignin\x0a")))
(check-sat)
