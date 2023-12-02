(require '#:asdf)

(asdf:load-system '#:slynk)
(loop for file in (directory "/home/art/projects/sbcl-librarian/bundle/sly/contrib/*.lisp")
      do (load file))
(load "~/quicklisp/setup.lisp")

(asdf:load-system '#:libcalc)


(in-package #:sbcl-librarian/example/libcalc)

(build-bindings libcalc ".")
(build-python-bindings libcalc ".")
(build-core-and-die libcalc "." :compression t)
