(declare-const X String)
; User-Agent\x3A\dServer
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.range "0" "9") (str.to.re "Server\x0a"))))
; logs\s+TCP.*Toolbarads\.grokads\.com
(assert (str.in.re X (re.++ (str.to.re "logs") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TCP") (re.* re.allchar) (str.to.re "Toolbarads.grokads.com\x0a"))))
; IP-[^\n\r]*URL\d\x7croogoo\x7c\.cfgmPOPrtCUSTOMPalToolbar
(assert (not (str.in.re X (re.++ (str.to.re "IP-") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "URL") (re.range "0" "9") (str.to.re "|roogoo|.cfgmPOPrtCUSTOMPalToolbar\x0a")))))
; /filename=[^\n]*\x2eaddin/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".addin/i\x0a")))))
(check-sat)
