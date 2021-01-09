(declare-const X String)
; [a-zA-Z0-9]*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /^Host\x3a\s*(cache.dyndns.info|flashcenter.info|flashrider.org|webapp.serveftp.com|web.autoflash.info|webupdate.dyndns.info|webupdate.hopto.org|web.velocitycache.com)/smiH
(assert (str.in.re X (re.++ (str.to.re "/Host:") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.++ (str.to.re "cache") re.allchar (str.to.re "dyndns") re.allchar (str.to.re "info")) (re.++ (str.to.re "flashcenter") re.allchar (str.to.re "info")) (re.++ (str.to.re "flashrider") re.allchar (str.to.re "org")) (re.++ (str.to.re "webapp") re.allchar (str.to.re "serveftp") re.allchar (str.to.re "com")) (re.++ (str.to.re "web") re.allchar (str.to.re "autoflash") re.allchar (str.to.re "info")) (re.++ (str.to.re "webupdate") re.allchar (str.to.re "dyndns") re.allchar (str.to.re "info")) (re.++ (str.to.re "webupdate") re.allchar (str.to.re "hopto") re.allchar (str.to.re "org")) (re.++ (str.to.re "web") re.allchar (str.to.re "velocitycache") re.allchar (str.to.re "com"))) (str.to.re "/smiH\x0a"))))
; /GET\s\/[\w-]{64}\sHTTP\/1/
(assert (str.in.re X (re.++ (str.to.re "/GET") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "/") ((_ re.loop 64 64) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "HTTP/1/\x0a"))))
; <\?xml.*</note>
(assert (str.in.re X (re.++ (str.to.re "<?xml") (re.* re.allchar) (str.to.re "</note>\x0a"))))
(check-sat)
