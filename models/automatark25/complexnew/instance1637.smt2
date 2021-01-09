(declare-const X String)
; ^(1[0-2]|0?[1-9]):([0-5]?[0-9])( AM| PM)$
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "2")) (re.++ (re.opt (str.to.re "0")) (re.range "1" "9"))) (str.to.re ":\x0a") (re.opt (re.range "0" "5")) (re.range "0" "9") (str.to.re " ") (re.union (str.to.re "AM") (str.to.re "PM")))))
; v\x3B\d+more.*is\.htazmnjgmomgbdz\x2fzzmw\.gzt
(assert (str.in.re X (re.++ (str.to.re "v;") (re.+ (re.range "0" "9")) (str.to.re "more") (re.* re.allchar) (str.to.re "is.htazmnjgmomgbdz/zzmw.gzt\x0a"))))
; /filename=[^\n]*\x2em4v/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4v/i\x0a")))))
; Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware.
(assert (not (str.in.re X (re.++ (str.to.re "Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware") re.allchar (str.to.re "\x0a")))))
(check-sat)
