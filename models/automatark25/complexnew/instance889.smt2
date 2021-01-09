(declare-const X String)
; (\[a url=\"[^\[\]\"]*\"\])([^\[\]]+)(\[/a\])
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "[/a]\x0a[a url=\x22") (re.* (re.union (str.to.re "[") (str.to.re "]") (str.to.re "\x22"))) (str.to.re "\x22]")))))
; subject\x3Anode=LoginNSIS_DOWNLOAD
(assert (not (str.in.re X (str.to.re "subject:node=LoginNSIS_DOWNLOAD\x0a"))))
; <font[a-zA-Z0-9_\^\$\.\|\{\[\}\]\(\)\*\+\?\\~`!@#%&-=;:'",/\n\s]*>
(assert (not (str.in.re X (re.++ (str.to.re "<font") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "^") (str.to.re "$") (str.to.re ".") (str.to.re "|") (str.to.re "{") (str.to.re "[") (str.to.re "}") (str.to.re "]") (str.to.re "(") (str.to.re ")") (str.to.re "*") (str.to.re "+") (str.to.re "?") (str.to.re "\x5c") (str.to.re "~") (str.to.re "`") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "%") (re.range "&" "=") (str.to.re ";") (str.to.re ":") (str.to.re "'") (str.to.re "\x22") (str.to.re ",") (str.to.re "/") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ">\x0a")))))
; Ready\s+Client\s+MyBrowserHost\x3asecurityon\x3AHost\x3ARedirector\x22ServerHost\x3AX-Mailer\x3A
(assert (str.in.re X (re.++ (str.to.re "Ready") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Client") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "MyBrowserHost:securityon:Host:Redirector\x22ServerHost:X-Mailer:\x13\x0a"))))
(check-sat)
