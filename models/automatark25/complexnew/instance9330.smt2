(declare-const X String)
; /^\/jmx.jar?r=\d+/Ui
(assert (str.in.re X (re.++ (str.to.re "//jmx") re.allchar (str.to.re "ja") (re.opt (str.to.re "r")) (str.to.re "r=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; /User-Agent\x3a\x20[^\n]*?WinHttp\x2eWinHttpRequest.*?\n/H
(assert (str.in.re X (re.++ (str.to.re "/User-Agent: ") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re "WinHttp.WinHttpRequest") (re.* re.allchar) (str.to.re "\x0a/H\x0a"))))
; /\x2exlw([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xlw") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
