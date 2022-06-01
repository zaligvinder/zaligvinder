(declare-const X String)
; /filename=[^\n]*\u{2e}mpg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mpg/i\u{a}"))))
; /\u{2F}[a-z]+\u{2e}png/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.+ (re.range "a" "z")) (str.to_re ".png/Ui\u{a}")))))
; ^([1-9]|1[0-2])$
(assert (not (str.in_re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "\u{a}")))))
; Subject\u{3a}FTPdistdcww\u{2E}dmcast\u{2E}com
(assert (not (str.in_re X (str.to_re "Subject:FTPdistdcww.dmcast.com\u{a}"))))
(check-sat)
