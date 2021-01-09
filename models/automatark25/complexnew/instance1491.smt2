(declare-const X String)
; /filename=[^\n]*\x2eurl/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".url/i\x0a"))))
; www\x2Eyoogee\x2EcomserverHost\x3Aref\x3D\x25user\x5Fid
(assert (not (str.in.re X (str.to.re "www.yoogee.com\x13serverHost:ref=%user_id\x0a"))))
; User-Agent\x3AUser-Agent\x3Awp-includes\x2Ftheme\x2Ephp\x3Fframe_ver2
(assert (str.in.re X (str.to.re "User-Agent:User-Agent:wp-includes/theme.php?frame_ver2\x0a")))
(check-sat)
