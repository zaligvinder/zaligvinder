(declare-const X String)
; ^(20|23|27|30|33)-[0-9]{8}-[0-9]$
(assert (str.in.re X (re.++ (re.union (str.to.re "20") (str.to.re "23") (str.to.re "27") (str.to.re "30") (str.to.re "33")) (str.to.re "-") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "-") (re.range "0" "9") (str.to.re "\x0a"))))
; /filename=[^\n]*\x2exwd/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xwd/i\x0a")))))
; EFError\swww\x2emalware-stopper\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "EFError") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.malware-stopper.com\x0a")))))
; /filename=[^\n]*\x2ecpe/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cpe/i\x0a")))))
; User-Agent\x3AChildWebGuardianHXDownloadX-Mailer\x3a
(assert (not (str.in.re X (str.to.re "User-Agent:ChildWebGuardianHXDownloadX-Mailer:\x13\x0a"))))
(check-sat)
