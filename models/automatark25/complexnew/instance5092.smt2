(declare-const X String)
; ^([-]?[0-9])$|^([-]?[1][0-2])$
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "-")) (re.range "0" "9")) (re.++ (str.to_re "\u{a}") (re.opt (str.to_re "-")) (str.to_re "1") (re.range "0" "2")))))
; /^Content-Type\u{3a}[\u{20}\u{9}]+application\/octet-stream/smiH
(assert (not (str.in_re X (re.++ (str.to_re "/Content-Type:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (str.to_re "application/octet-stream/smiH\u{a}")))))
; Host\u{3A}as\u{2E}starware\u{2E}com\u{2F}dp\u{2F}search\?x=
(assert (not (str.in_re X (str.to_re "Host:as.starware.com/dp/search?x=\u{a}"))))
; zmnjgmomgbdz\u{2f}zzmw\.gzt.*www\u{2E}altnet\u{2E}com.*User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "zmnjgmomgbdz/zzmw.gzt") (re.* re.allchar) (str.to_re "www.altnet.com\u{1b}") (re.* re.allchar) (str.to_re "User-Agent:\u{a}")))))
(check-sat)
