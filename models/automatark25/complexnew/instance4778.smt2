(declare-const X String)
; /\x2exls([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xls") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; \x23\x23\x23\x23Host\x3ASubject\x3Awww\x2Epcsentinelsoftware\x2EcomHost\x3AWeHost\x3awww\x2Ewowokay\x2Ecom/wowokaybar\x2Ephp
(assert (str.in.re X (str.to.re "####Host:Subject:www.pcsentinelsoftware.comHost:WeHost:www.wowokay.com/wowokaybar.php\x0a")))
; /\x2ehtc([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.htc") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; BysooTBwhenu\x2EcomToolbarWeAgentUser-Agent\x3ahasHost\x3atoWebupdate\.cgithis
(assert (str.in.re X (str.to.re "BysooTBwhenu.com\x1bToolbarWeAgentUser-Agent:hasHost:toWebupdate.cgithis\x0a")))
(check-sat)
