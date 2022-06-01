(declare-const X String)
; /\u{2e}hhk([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.hhk") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; Host\u{3A}\s+User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:\u{a}")))))
; \bhttp(s?)\:\/\/[a-zA-Z0-9\/\?\-\.\&\(\)_=#]*
(assert (str.in_re X (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "/") (str.to_re "?") (str.to_re "-") (str.to_re ".") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "_") (str.to_re "=") (str.to_re "#"))) (str.to_re "\u{a}"))))
; Host\u{3A}\.exePass-OnHost\u{3A}\.exe\u{2F}toolbar\u{2F}
(assert (not (str.in_re X (str.to_re "Host:.exePass-OnHost:.exe/toolbar/\u{a}"))))
(check-sat)
