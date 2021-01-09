(declare-const X String)
; AdTools\d+rprpgbnrppb\x2fciExplorer\x2Fsto=notificationfindwww\x2Emakemesearch\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "AdTools") (re.+ (re.range "0" "9")) (str.to.re "rprpgbnrppb/ciExplorer/sto=notification\x13findwww.makemesearch.com\x0a"))))
; \[\w+\]\s+((.*=.*\s+)*|[^\[])
(assert (not (str.in.re X (re.++ (str.to.re "[") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "]") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.* (re.++ (re.* re.allchar) (str.to.re "=") (re.* re.allchar) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (re.comp (str.to.re "["))) (str.to.re "\x0a")))))
; Host\x3A\w+wwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "wwwfromToolbartheServer:www.searchreslt.com\x0a"))))
; fsbuffshprrprt-cs-Host\x3A
(assert (not (str.in.re X (str.to.re "fsbuffshprrprt-cs-\x13Host:\x0a"))))
(check-sat)
