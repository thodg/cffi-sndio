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

(defun sio-bps (bits)
  (cond ((<= bits 8) 1)
        ((<= 16 bits) 2)
        (t 4)))

(defcfun ("sio_open" c-sio-open) :pointer
  (name :string)
  (mode :unsigned-int)
  (nbio_flag :int))

(defun sio-open (name mode nbio_flag)
  (c-sio-open name mode nbio_flag))

(defcfun ("sio_close" c-sio-close) :void
  (hdl :pointer))

(defun sio-close (hdl)
  (c-sio-close hdl))

(defcfun ("sio_setpar" c-sio-setpar) :int
  (par (:pointer (:struct sio-par))))

(defun sio-initpar (par)
  (c-sio-initpar par))

(defcfun ("sio_initpar" c-sio-initpar) :void
  (par (:pointer (:struct sio-par))))

(defun sio-initpar (par)
  (c-sio-initpar par))

(defcfun ("sio_initpar" c-sio-initpar) :void
  (par (:pointer (:struct sio-par))))

(defun sio-initpar (par)
  (c-sio-initpar par))

(defcfun ("sio_initpar" c-sio-initpar) :void
  (par (:pointer (:struct sio-par))))

(defun sio-initpar (par)
  (c-sio-initpar par))
