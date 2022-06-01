(declare-const X String)
; Host\u{3A}\d+Subject\u{3A}as\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Subject:as.starware.com/dp/search?x=\u{a}"))))
; www\.take5bingo\.com\d+Host\u{3A}Host\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "www.take5bingo.com\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "Host:Host:\u{a}")))))
; e2give\.comConnectionSpywww\u{2E}slinkyslate
(assert (str.in_re X (str.to_re "e2give.comConnectionSpywww.slinkyslate\u{a}")))
; \b([\d\w\.\/\+\-\?\:]*)((ht|f)tp(s|)\:\/\/|[\d\d\d|\d\d]\.[\d\d\d|\d\d]\.|www\.|\.tv|\.ac|\.com|\.edu|\.gov|\.int|\.mil|\.net|\.org|\.biz|\.info|\.name|\.pro|\.museum|\.co)([\d\w\.\/\%\+\-\=\&\?\:\\\"\'\,\|\~\;]*)\b
(assert (not (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (str.to_re ".") (str.to_re "/") (str.to_re "+") (str.to_re "-") (str.to_re "?") (str.to_re ":") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tps://")) (re.++ (re.union (re.range "0" "9") (str.to_re "|")) (str.to_re ".") (re.union (re.range "0" "9") (str.to_re "|")) (str.to_re ".")) (str.to_re "www.") (str.to_re ".tv") (str.to_re ".ac") (str.to_re ".com") (str.to_re ".edu") (str.to_re ".gov") (str.to_re ".int") (str.to_re ".mil") (str.to_re ".net") (str.to_re ".org") (str.to_re ".biz") (str.to_re ".info") (str.to_re ".name") (str.to_re ".pro") (str.to_re ".museum") (str.to_re ".co")) (re.* (re.union (re.range "0" "9") (str.to_re ".") (str.to_re "/") (str.to_re "%") (str.to_re "+") (str.to_re "-") (str.to_re "=") (str.to_re "&") (str.to_re "?") (str.to_re ":") (str.to_re "\u{5c}") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ",") (str.to_re "|") (str.to_re "~") (str.to_re ";") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{a}")))))
; Daemonwww\u{2E}lookquick\u{2E}comHost\u{3A}
(assert (str.in_re X (str.to_re "Daemonwww.lookquick.comHost:\u{a}")))
(check-sat)
