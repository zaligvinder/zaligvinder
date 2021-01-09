(declare-const X String)
; /\x2epif([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pif") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /filename=[^\n]*\x2epng/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".png/i\x0a")))))
; Host\x3A[^\n\r]*cache\x2Eeverer\x2Ecom\s+from\.myway\.comToolbar
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "cache.everer.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "from.myway.com\x1bToolbar\x0a")))))
; (\d+)?-?(\d+)-(\d+)
(assert (not (str.in.re X (re.++ (re.opt (re.+ (re.range "0" "9"))) (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; [^ _0-9a-zA-Z\$\%\'\-\@\{\}\~\!\#\(\)\&\^]
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "_") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "$") (str.to.re "%") (str.to.re "'") (str.to.re "-") (str.to.re "@") (str.to.re "{") (str.to.re "}") (str.to.re "~") (str.to.re "!") (str.to.re "#") (str.to.re "(") (str.to.re ")") (str.to.re "&") (str.to.re "^")) (str.to.re "\x0a"))))
(check-sat)
