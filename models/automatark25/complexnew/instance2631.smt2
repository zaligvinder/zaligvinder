(declare-const X String)
; Toolbar[^\n\r]*tvshowtickets\w+weatherHost\x3AUser-Agent\x3Atwfofrfzlugq\x2feve\.qd
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "tvshowtickets") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "weatherHost:User-Agent:twfofrfzlugq/eve.qd\x0a"))))
; http[s]?://(www|[a-zA-Z]{2}-[a-zA-Z]{2})\.facebook\.com/(pages/[a-zA-Z0-9\.-]+/[0-9]+|[a-zA-Z0-9\.-]+)[/]?$
(assert (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.union (str.to.re "www") (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "-") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re ".facebook.com/") (re.union (re.++ (str.to.re "pages/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re "/") (re.+ (re.range "0" "9"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-")))) (re.opt (str.to.re "/")) (str.to.re "\x0a"))))
; UI2Host\x3ADesktopUser-Agent\x3a\x2Fnotifier\x2F
(assert (not (str.in.re X (str.to.re "UI2Host:DesktopUser-Agent:/notifier/\x0a"))))
; <select(.|\n)*?selected(.|\n)*?>(.*?)</option>(.|\n)*?</select>
(assert (not (str.in.re X (re.++ (str.to.re "<select") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "selected") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re ">") (re.* re.allchar) (str.to.re "</option>") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "</select>\x0a")))))
(check-sat)
