(defstruct erva nome preco-base)

(defun calcula-dosagem (peso idade)
  (cond ((or (< peso 30) (< idade 10)) "10ml")
        ((< peso 60) "25ml")
        (t "50ml")))

(defun ajusta-preco (erva)
  (cond ((string= (erva-nome erva) "Ginseng") (* (erva-preco-base erva) 3.0))
        ((string= (erva-nome erva) "Lotus") (* (erva-preco-base erva) 1.5))
        (t (erva-preco-base erva))))

(defun descricao-erva (erva peso idade)
  (format nil "~a | Preco: ~,2f | Dosagem: ~a"
          (erva-nome erva)
          (ajusta-preco erva)
          (calcula-dosagem peso idade)))

(defun main ()
  (let ((ginseng  (make-erva :nome "Ginseng"  :preco-base 10.0))
        (lotus    (make-erva :nome "Lotus"    :preco-base 10.0))
        (camomila (make-erva :nome "Camomila" :preco-base 10.0)))

    (dolist (erva (list ginseng lotus camomila))
      (format t "~a~%" (descricao-erva erva 25 8))
      (format t "~a~%" (descricao-erva erva 50 15))
      (format t "~a~%" (descricao-erva erva 80 30))
      (terpri))))

(main)