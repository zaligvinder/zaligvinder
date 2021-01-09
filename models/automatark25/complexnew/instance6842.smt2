(declare-const X String)
; www\x2eproventactics\x2ecomKeyloggerExplorerfileserverSI\|Server\|www\x2Emyarmory\x2Ecom
(assert (not (str.in.re X (str.to.re "www.proventactics.comKeyloggerExplorerfileserverSI|Server|\x13www.myarmory.com\x0a"))))
; User-Agent\x3AChildWebGuardianHXDownloadX-Mailer\x3a
(assert (not (str.in.re X (str.to.re "User-Agent:ChildWebGuardianHXDownloadX-Mailer:\x13\x0a"))))
; ^(\+48\s+)?\d{3}(\s*|\-)\d{3}(\s*|\-)\d{3}$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "+48") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eemf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".emf/i\x0a"))))
; /^(www\.|http:\/\/|https:\/\/|http:\/\/www\.|https:\/\/www\.)[a-z0-9]+\.[a-z]{2,4}$/
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "www.") (str.to.re "http://") (str.to.re "https://") (str.to.re "http://www.") (str.to.re "https://www.")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 4) (re.range "a" "z")) (str.to.re "/\x0a")))))
(check-sat)
