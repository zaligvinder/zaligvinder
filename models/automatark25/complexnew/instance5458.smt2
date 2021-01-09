(declare-const X String)
; ToolbarBasedATLRemoteFrom\x3Adcww\x2Edmcast\x2Ecom
(assert (str.in.re X (str.to.re "ToolbarBasedATLRemoteFrom:dcww.dmcast.com\x0a")))
; User-Agent\x3A.*Host\x3A\dName=Your\+Host\+is\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:") (re.range "0" "9") (str.to.re "Name=Your+Host+is:\x0a")))))
; Ready\s+Toolbar\d+ServerLiteToolbar
(assert (str.in.re X (re.++ (str.to.re "Ready") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Toolbar") (re.+ (re.range "0" "9")) (str.to.re "ServerLiteToolbar\x0a"))))
; urn:[a-z0-9]{1}[a-z0-9\-]{1,31}:[a-z0-9_,:=@;!'%/#\(\)\+\-\.\$\*\?]+
(assert (not (str.in.re X (re.++ (str.to.re "urn:") ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 1 31) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "-"))) (str.to.re ":") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ",") (str.to.re ":") (str.to.re "=") (str.to.re "@") (str.to.re ";") (str.to.re "!") (str.to.re "'") (str.to.re "%") (str.to.re "/") (str.to.re "#") (str.to.re "(") (str.to.re ")") (str.to.re "+") (str.to.re "-") (str.to.re ".") (str.to.re "$") (str.to.re "*") (str.to.re "?"))) (str.to.re "\x0a")))))
; /User-Agent\x3a\x20[^\x0d\x0a]*?\x3bU\x3a[^\x0d\x0a]{1,68}\x3brv\x3a/H
(assert (str.in.re X (re.++ (str.to.re "/User-Agent: ") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re ";U:") ((_ re.loop 1 68) (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re ";rv:/H\x0a"))))
(check-sat)
