;;
;;  cffi-sndio  -  Common Lisp wrapper for OpenBSD sndio
;;
;;  Copyright 2017,2018 Thomas de Grivel <thoxdg@gmail.com>
;;
;;  Permission to use, copy, modify, and distribute this software for any
;;  purpose with or without fee is hereby granted, provided that the above
;;  copyright notice and this permission notice appear in all copies.
;;
;;  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
;;  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
;;  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
;;  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
;;  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
;;  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
;;  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
;;

(in-package :common-lisp)

(defpackage :cffi-sndio
  (:nicknames :sndio)
  (:use
   :cffi
   :common-lisp
   :errno)
  (:export
    #:__magic
    #:__pad
    #:appbufsz
    #:bits
    #:bps
    #:bufsz
    #:confs
    #:enc
    #:le
    #:msb
    #:nconf
    #:pchan
    #:rate
    #:rchan
    #:round
    #:sig
    #:xrun
    #:+mio-in+
    #:+mio-out+
    #:+mio-portany+
    #:+sio-devany+
    #:+sio-error+
    #:+sio-ignore+
    #:+sio-le-native+
    #:+sio-maxvol+
    #:+sio-nchan+
    #:+sio-nconf+
    #:+sio-nenc+
    #:+sio-nrate+
    #:+sio-play+
    #:+sio-rec+
    #:+sio-sync+
    #:sio-cap
    #:sio-conf
    #:sio-enc
    #:sio-par
    ))
