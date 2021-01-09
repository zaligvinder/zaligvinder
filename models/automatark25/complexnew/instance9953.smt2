(declare-const X String)
; ^[1-9][0-9]{3}\s?[a-zA-Z]{2}$
(assert (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; traffbest\x2Ebiz\d+\.compress.*sidebar\.activeshopper\.comaresflashdownloader\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "traffbest.biz") (re.+ (re.range "0" "9")) (str.to.re ".compress") (re.* re.allchar) (str.to.re "sidebar.activeshopper.comaresflashdownloader.com\x0a")))))
; /^Host\x3a\s*(cache.dyndns.info|flashcenter.info|flashrider.org|webapp.serveftp.com|web.autoflash.info|webupdate.dyndns.info|webupdate.hopto.org|web.velocitycache.com)/smiH
(assert (str.in.re X (re.++ (str.to.re "/Host:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (str.to.re "cache") re.allchar (str.to.re "dyndns") re.allchar (str.to.re "info")) (re.++ (str.to.re "flashcenter") re.allchar (str.to.re "info")) (re.++ (str.to.re "flashrider") re.allchar (str.to.re "org")) (re.++ (str.to.re "webapp") re.allchar (str.to.re "serveftp") re.allchar (str.to.re "com")) (re.++ (str.to.re "web") re.allchar (str.to.re "autoflash") re.allchar (str.to.re "info")) (re.++ (str.to.re "webupdate") re.allchar (str.to.re "dyndns") re.allchar (str.to.re "info")) (re.++ (str.to.re "webupdate") re.allchar (str.to.re "hopto") re.allchar (str.to.re "org")) (re.++ (str.to.re "web") re.allchar (str.to.re "velocitycache") re.allchar (str.to.re "com"))) (str.to.re "/smiH\x0a"))))
; www\x2e2-seek\x2ecom\x2fsearch\s+TPSystem
(assert (not (str.in.re X (re.++ (str.to.re "www.2-seek.com/search") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TPSystem\x0a")))))
; Daemonwww\x2Elookquick\x2EcomHost\x3A
(assert (str.in.re X (str.to.re "Daemonwww.lookquick.comHost:\x0a")))
(check-sat)
