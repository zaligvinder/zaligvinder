(declare-const X String)
; <!\[CDATA\[([^\]]*)\]\]>
(assert (str.in.re X (re.++ (str.to.re "<![CDATA[") (re.* (re.comp (str.to.re "]"))) (str.to.re "]]>\x0a"))))
; Word\w+My\s+\x22TheZC-BridgeUser-Agent\x3AserverUSER-Attached
(assert (not (str.in.re X (re.++ (str.to.re "Word") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "My") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22TheZC-BridgeUser-Agent:serverUSER-Attached\x0a")))))
; User-Agent\x3aUser-Agent\x3AReport\x2EHost\x3Afhfksjzsfu\x2fahm\.uqs
(assert (not (str.in.re X (str.to.re "User-Agent:User-Agent:Report.Host:fhfksjzsfu/ahm.uqs\x0a"))))
; ^\d{5}((\-|\s)?\d{4})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; GREATHost\x3aFILESIZE\x3E\x2Fiis2ebs\.aspFTPUser-Agent\x3A
(assert (str.in.re X (str.to.re "GREATHost:FILESIZE>\x13/iis2ebs.aspFTPUser-Agent:\x0a")))
(check-sat)
