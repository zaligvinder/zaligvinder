(declare-const X String)
; /\x2exbm([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xbm") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; wowokay\d+FTP\s+Host\x3AFiltered\x22reaction\x2Etxt\x22
(assert (not (str.in.re X (re.++ (str.to.re "wowokay") (re.+ (re.range "0" "9")) (str.to.re "FTP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:Filtered\x22reaction.txt\x22\x0a")))))
; Port.*Pro.*www\x2eproventactics\x2ecomwv=update\.cgidrivesDays
(assert (not (str.in.re X (re.++ (str.to.re "Port") (re.* re.allchar) (str.to.re "Pro") (re.* re.allchar) (str.to.re "www.proventactics.comwv=update.cgidrivesDays\x0a")))))
; ^[A-Za-z]:\\([^"*/:?|<>\\.\x00-\x20]([^"*/:?|<>\\\x00-\x1F]*[^"*/:?|<>\\.\x00-\x20])?\\)*$
(assert (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (str.to.re ":\x5c") (re.* (re.++ (re.union (str.to.re "\x22") (str.to.re "*") (str.to.re "/") (str.to.re ":") (str.to.re "?") (str.to.re "|") (str.to.re "<") (str.to.re ">") (str.to.re "\x5c") (str.to.re ".") (re.range "\x00" " ")) (re.opt (re.++ (re.* (re.union (str.to.re "\x22") (str.to.re "*") (str.to.re "/") (str.to.re ":") (str.to.re "?") (str.to.re "|") (str.to.re "<") (str.to.re ">") (str.to.re "\x5c") (re.range "\x00" "\x1f"))) (re.union (str.to.re "\x22") (str.to.re "*") (str.to.re "/") (str.to.re ":") (str.to.re "?") (str.to.re "|") (str.to.re "<") (str.to.re ">") (str.to.re "\x5c") (str.to.re ".") (re.range "\x00" " ")))) (str.to.re "\x5c"))) (str.to.re "\x0a"))))
(check-sat)
