(declare-const X String)
; Host\x3A\d+Subject\x3Aas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Subject:as.starware.com/dp/search?x=\x0a"))))
; www\.take5bingo\.com\d+Host\x3AHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.take5bingo.com\x1b") (re.+ (re.range "0" "9")) (str.to.re "Host:Host:\x0a")))))
; e2give\.comConnectionSpywww\x2Eslinkyslate
(assert (str.in.re X (str.to.re "e2give.comConnectionSpywww.slinkyslate\x0a")))
; \b([\d\w\.\/\+\-\?\:]*)((ht|f)tp(s|)\:\/\/|[\d\d\d|\d\d]\.[\d\d\d|\d\d]\.|www\.|\.tv|\.ac|\.com|\.edu|\.gov|\.int|\.mil|\.net|\.org|\.biz|\.info|\.name|\.pro|\.museum|\.co)([\d\w\.\/\%\+\-\=\&\?\:\\\"\'\,\|\~\;]*)\b
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "0" "9") (str.to.re ".") (str.to.re "/") (str.to.re "+") (str.to.re "-") (str.to.re "?") (str.to.re ":") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (re.++ (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tps://")) (re.++ (re.union (re.range "0" "9") (str.to.re "|")) (str.to.re ".") (re.union (re.range "0" "9") (str.to.re "|")) (str.to.re ".")) (str.to.re "www.") (str.to.re ".tv") (str.to.re ".ac") (str.to.re ".com") (str.to.re ".edu") (str.to.re ".gov") (str.to.re ".int") (str.to.re ".mil") (str.to.re ".net") (str.to.re ".org") (str.to.re ".biz") (str.to.re ".info") (str.to.re ".name") (str.to.re ".pro") (str.to.re ".museum") (str.to.re ".co")) (re.* (re.union (re.range "0" "9") (str.to.re ".") (str.to.re "/") (str.to.re "%") (str.to.re "+") (str.to.re "-") (str.to.re "=") (str.to.re "&") (str.to.re "?") (str.to.re ":") (str.to.re "\x5c") (str.to.re "\x22") (str.to.re "'") (str.to.re ",") (str.to.re "|") (str.to.re "~") (str.to.re ";") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; Daemonwww\x2Elookquick\x2EcomHost\x3A
(assert (str.in.re X (str.to.re "Daemonwww.lookquick.comHost:\x0a")))
(check-sat)
