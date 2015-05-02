#!/bin/sh

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Delete :CustomS3UploadHeaders2'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2 array'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:0:extension string "--$$S3DefaultExtension$$--"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:0:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:0:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:0:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:0:headers:0:value string "REDUCED_REDUNDANCY"'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:1:extension string "html"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:1:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:1:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:1:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:1:headers:0:value string "REDUCED_REDUNDANCY"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:1:headers:1:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:1:headers:1:name string "Content-Type"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:1:headers:1:value string "text/html; charset=UTF-8"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:1:headers:2:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:1:headers:2:name string "Content-Encoding"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:1:headers:2:value string "gzip"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:1:headers:3:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:1:headers:3:name string "X-UA-Compatible"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:1:headers:3:value string "IE=edge,chrome=1"'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:2:extension string "xhtml"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:2:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:2:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:2:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:2:headers:0:value string "REDUCED_REDUNDANCY"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:2:headers:1:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:2:headers:1:name string "Content-Type"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:2:headers:1:value string "application/xhtml+xml; charset=UTF-8"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:2:headers:2:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:2:headers:2:name string "Content-Encoding"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:2:headers:2:value string "gzip"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:2:headers:3:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:2:headers:3:name string "X-UA-Compatible"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:2:headers:3:value string "IE=edge,chrome=1"'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:3:extension string "xml"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:3:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:3:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:3:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:3:headers:0:value string "REDUCED_REDUNDANCY"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:3:headers:1:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:3:headers:1:name string "Content-Type"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:3:headers:1:value string "application/xml; charset=UTF-8"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:3:headers:2:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:3:headers:2:name string "Content-Encoding"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:3:headers:2:value string "gzip"'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:4:extension string "atom"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:4:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:4:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:4:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:4:headers:0:value string "REDUCED_REDUNDANCY"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:4:headers:1:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:4:headers:1:name string "Content-Type"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:4:headers:1:value string "application/atom+xml; charset=UTF-8"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:4:headers:2:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:4:headers:2:name string "Content-Encoding"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:4:headers:2:value string "gzip"'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:5:extension string "rss"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:5:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:5:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:5:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:5:headers:0:value string "REDUCED_REDUNDANCY"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:5:headers:1:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:5:headers:1:name string "Content-Type"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:5:headers:1:value string "application/rss+xml; charset=UTF-8"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:5:headers:2:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:5:headers:2:name string "Content-Encoding"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:5:headers:2:value string "gzip"'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:6:extension string "svg"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:6:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:6:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:6:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:6:headers:0:value string "REDUCED_REDUNDANCY"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:6:headers:1:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:6:headers:1:name string "Content-Type"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:6:headers:1:value string "image/svg+xml; charset=UTF-8"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:6:headers:2:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:6:headers:2:name string "Content-Encoding"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:6:headers:2:value string "gzip"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:6:headers:3:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:6:headers:3:name string "Cache-Control"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:6:headers:3:value string "max-age=31536000"'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:7:extension string "css"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:7:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:7:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:7:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:7:headers:0:value string "REDUCED_REDUNDANCY"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:7:headers:1:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:7:headers:1:name string "Content-Type"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:7:headers:1:value string "text/css; charset=UTF-8"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:7:headers:2:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:7:headers:2:name string "Content-Encoding"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:7:headers:2:value string "gzip"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:7:headers:3:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:7:headers:3:name string "Cache-Control"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:7:headers:3:value string "max-age=31536000"'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:8:extension string "js"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:8:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:8:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:8:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:8:headers:0:value string "REDUCED_REDUNDANCY"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:8:headers:1:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:8:headers:1:name string "Content-Type"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:8:headers:1:value string "application/javascript; charset=UTF-8"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:8:headers:2:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:8:headers:2:name string "Content-Encoding"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:8:headers:2:value string "gzip"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:8:headers:3:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:8:headers:3:name string "Cache-Control"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:8:headers:3:value string "max-age=31536000"'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:9:extension string "eot"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:9:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:9:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:9:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:9:headers:0:value string "REDUCED_REDUNDANCY"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:9:headers:1:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:9:headers:1:name string "Content-Type"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:9:headers:1:value string "application/vnd.ms-fontobject"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:9:headers:2:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:9:headers:2:name string "Cache-Control"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:9:headers:2:value string "max-age=31536000"'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:10:extension string "woff"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:10:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:10:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:10:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:10:headers:0:value string "REDUCED_REDUNDANCY"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:10:headers:1:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:10:headers:1:name string "Content-Type"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:10:headers:1:value string "application/font-woff"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:10:headers:2:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:10:headers:2:name string "Cache-Control"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:10:headers:2:value string "max-age=31536000"'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:11:extension string "ttf"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:11:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:11:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:11:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:11:headers:0:value string "REDUCED_REDUNDANCY"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:11:headers:1:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:11:headers:1:name string "Content-Type"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:11:headers:1:value string "application/x-font-ttf"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:11:headers:2:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:11:headers:2:name string "Cache-Control"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:11:headers:2:value string "max-age=31536000"'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:12:extension string "gif"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:12:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:12:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:12:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:12:headers:0:value string "REDUCED_REDUNDANCY"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:12:headers:1:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:12:headers:1:name string "Content-Type"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:12:headers:1:value string "image/gif"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:12:headers:2:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:12:headers:2:name string "Cache-Control"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:12:headers:2:value string "max-age=31536000"'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:13:extension string "jpg"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:13:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:13:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:13:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:13:headers:0:value string "REDUCED_REDUNDANCY"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:13:headers:1:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:13:headers:1:name string "Content-Type"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:13:headers:1:value string "image/jpeg"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:13:headers:2:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:13:headers:2:name string "Cache-Control"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:13:headers:2:value string "max-age=31536000"'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:14:extension string "png"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:14:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:14:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:14:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:14:headers:0:value string "REDUCED_REDUNDANCY"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:14:headers:1:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:14:headers:1:name string "Content-Type"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:14:headers:1:value string "image/png"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:14:headers:2:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:14:headers:2:name string "Cache-Control"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:14:headers:2:value string "max-age=31536000"'

/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:15:extension string "ico"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:15:headers array'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:15:headers:0:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:15:headers:0:name string "x-amz-storage-class"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:15:headers:0:value string "REDUCED_REDUNDANCY"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:15:headers:1:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:15:headers:1:name string "Content-Type"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:15:headers:1:value string "image/vnd.microsoft.icon"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:15:headers:2:enabled bool true'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:15:headers:2:name string "Cache-Control"'
/usr/libexec/PlistBuddy "$HOME/Library/Preferences/com.panic.Transmit.plist" -c 'Add :CustomS3UploadHeaders2:15:headers:2:value string "max-age=31536000"'
