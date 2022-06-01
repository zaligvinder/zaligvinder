(declare-const X String)
; Hours\w+User-Agent\u{3A}ChildWebGuardian
(assert (str.in_re X (re.++ (str.to_re "Hours") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "User-Agent:ChildWebGuardian\u{a}"))))
; /\u{2e}mim([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.mim") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}")))))
; [a-z]{3,4}s?:\/\/[-\w.]+(\/[-.\w%&=?]+)*
(assert (not (str.in_re X (re.++ ((_ re.loop 3 4) (re.range "a" "z")) (re.opt (str.to_re "s")) (str.to_re "://") (re.+ (re.union (str.to_re "-") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (str.to_re "/") (re.+ (re.union (str.to_re "-") (str.to_re ".") (str.to_re "%") (str.to_re "&") (str.to_re "=") (str.to_re "?") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{a}")))))
; www\.thecommunicator\.net[^\n\r]*iufilfwulmfi\u{2f}riuf\.lio
(assert (str.in_re X (re.++ (str.to_re "www.thecommunicator.net") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "iufilfwulmfi/riuf.lio\u{a}"))))
; TM_SEARCH3SearchUser-Agent\u{3A}as\u{2E}starware\u{2E}comM\u{2E}zipCasinoResults_sq=aolsnssignin
(assert (str.in_re X (str.to_re "TM_SEARCH3SearchUser-Agent:as.starware.comM.zipCasinoResults_sq=aolsnssignin\u{a}")))
(check-sat)
