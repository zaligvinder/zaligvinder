(declare-const X String)
; /\x2ecsv([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.csv") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /filename=[^\n]*\x2eppt/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ppt/i\x0a")))))
; Runner.*\x2Ehtml[^\n\r]*NetControl\x2EServer\d+media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAH
(assert (str.in.re X (re.++ (str.to.re "Runner") (re.* re.allchar) (str.to.re ".html") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "NetControl.Server\x13") (re.+ (re.range "0" "9")) (str.to.re "media.dxcdirect.com.smx?PASSW=SAH\x0a"))))
; pjpoptwql\x2frlnj\d+waiting\d+ocllceclbhs\x2fgth\w+gdvsotuqwsg\x2fdxt\.hd^User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "pjpoptwql/rlnj") (re.+ (re.range "0" "9")) (str.to.re "waiting") (re.+ (re.range "0" "9")) (str.to.re "ocllceclbhs/gth") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "gdvsotuqwsg/dxt.hdUser-Agent:\x0a")))))
(check-sat)
