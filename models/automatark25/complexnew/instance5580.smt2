(declare-const X String)
; ^[0-9A-Za-z_ ]+(.[jJ][pP][gG]|.[gG][iI][fF])$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " "))) (str.to.re "\x0a") re.allchar (re.union (re.++ (re.union (str.to.re "j") (str.to.re "J")) (re.union (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "g") (str.to.re "G"))) (re.++ (re.union (str.to.re "g") (str.to.re "G")) (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "f") (str.to.re "F")))))))
; LOGLiveHost\x3ALOGHandyhttp\x3A\x2F\x2Fwww\.searchinweb\.com\x2Fsearch\.php\?said=bar
(assert (str.in.re X (str.to.re "LOGLiveHost:LOGHandyhttp://www.searchinweb.com/search.php?said=bar\x0a")))
; ^([a-zA-Z0-9][a-zA-Z0-9_]*(\.{0,1})?[a-zA-Z0-9\-_]+)*(\.{0,1})@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|([a-zA-Z0-9\-]+(\.([a-zA-Z]{2,10}))(\.([a-zA-Z]{2,10}))?(\.([a-zA-Z]{2,10}))?))[\s]*$
(assert (not (str.in.re X (re.++ (re.* (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (re.opt (re.opt (str.to.re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "_"))))) (re.opt (str.to.re ".")) (str.to.re "@") (re.union (re.++ (str.to.re "[") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".")) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 10) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 10) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re ".") ((_ re.loop 2 10) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
; com\x2Findex\.php\?tpid=\x7D\x7BUser\x3A
(assert (str.in.re X (str.to.re "com/index.php?tpid=}{User:\x0a")))
; /agent_(win|lin|mac)_helper\.jar$/siU
(assert (str.in.re X (re.++ (str.to.re "/agent_") (re.union (str.to.re "win") (str.to.re "lin") (str.to.re "mac")) (str.to.re "_helper.jar/siU\x0a"))))
(check-sat)
