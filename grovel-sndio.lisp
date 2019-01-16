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

(in-package :cffi-sndio)

(include "sndio.h")

(constant (+sio-devany+  SIO_DEVANY))
(constant (+mio-portany+ SIO_PORTANY))

(constant (+sio-ignore+ SIO_IGNORE))
(constant (+sio-sync+   SIO_SYNC))
(constant (+sio-error+  SIO_ERROR))

(cstruct sio-par "struct sio_par"
  (bits     "bits"     :type :unsigned-int)
  (bps      "bps"      :type :unsigned-int)
  (sig      "sig"      :type :unsigned-int)
  (le       "le"       :type :unsigned-int)
  (msb      "msb"      :type :unsigned-int)
  (rchan    "rchan"    :type :unsigned-int)
  (pchan    "pchan"    :type :unsigned-int)
  (rate     "rate"     :type :unsigned-int)
  (bufsz    "bufsz"    :type :unsigned-int)
  (xrun     "xrun"     :type :unsigned-int)
  (round    "round"    :type :unsigned-int)
  (appbufsz "appbufsz" :type :unsigned-int)
  (__pad    "__pad"    :type :int)
  (__magic  "__magic"  :type :unsigned-int))

(constant (+sio-nenc+  SIO_NENC))
(constant (+sio-nchan+ SIO_NCHAN))
(constant (+sio-nrate+ SIO_NRATE))
(constant (+sio-nconf+ SIO_NCONF))

(cstruct sio-enc "struct sio_enc"
  (bits "bits" :type :unsigned-int)
  (bps  "bps"  :type :unsigned-int)
  (bps  "sig"  :type :unsigned-int)
  (bps  "le"  :type :unsigned-int)
  (bps  "msb"  :type :unsigned-int))

(cstruct sio-conf "struct sio_conf"
  (enc   "enc"   :type :unsigned-int)
  (rchan "rchan" :type :unsigned-int)
  (pchan "pchan" :type :unsigned-int)
  (rate  "rate"  :type :unsigned-int))

(cstruct sio-cap "struct sio_cap"
  (enc   "enc"   :type (:struct sio-enc) :count +sio-nenc+)
  (rchan "rchan" :type :unsigned-int :count +sio-nchan+)
  (pchan "pchan" :type :unsigned-int :count +sio-nchan+)
  (rate  "rate"  :type :unsigned-int :count +sio-nrate+)
  (__pad "__pad" :type :int :count 7)
  (nconf "nconf" :type :unsigned-int)
  (confs "confs" :type (:struct sio-conf) :count +sio-nconf+))

(constant (+sio-play+ SIO_PLAY))
(constant (+sio-rec+  SIO_REC))
(constant (+mio-out+  MIO_OUT))
(constant (+mio-in+   MIO_IN))

(constant (+sio-le-native+ SIO_LE_NATIVE))

(constant (+sio-maxvol+ SIO_MAXVOL))
