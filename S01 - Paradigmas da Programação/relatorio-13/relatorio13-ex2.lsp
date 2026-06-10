(defstruct criatura nome ambiente periculosidade vida-media)

(defun filtra-por-perigo (catalogo)
  (remove-if (lambda (c) (eq (criatura-periculosidade c) 'Baixa)) catalogo))

(defun descricao-criatura (c)
  (format nil "~a | ~a | ~a"
          (criatura-nome c)
          (criatura-ambiente c)
          (criatura-periculosidade c)))

(defun relatorio-profundidade (catalogo)
  (mapcar (lambda (c)
            (format nil "~a: Vive em ~a." (criatura-nome c) (criatura-ambiente c)))
          (remove-if-not (lambda (c) (string= (criatura-ambiente c) "Deep")) catalogo)))

(defun main ()
  (let ((catalogo (list
                   (make-criatura :nome "Peeper"           :ambiente "Safe Shallows" :periculosidade 'Baixa :vida-media 5)
                   (make-criatura :nome "Reaper Leviathan" :ambiente "Crash Zone"    :periculosidade 'Alta  :vida-media 80)
                   (make-criatura :nome "Warper"           :ambiente "Deep"          :periculosidade 'Media :vida-media 40)
                   (make-criatura :nome "Sea Dragon"       :ambiente "Deep"          :periculosidade 'Alta  :vida-media 200))))

    (format t "=== Catalogo Completo ===~%")
    (dolist (c catalogo)
      (format t "~a~%" (descricao-criatura c)))

    (format t "~%=== Perigosas ===~%")
    (dolist (c (filtra-por-perigo catalogo))
      (format t "~a~%" (descricao-criatura c)))

    (format t "~%=== Relatorio Profundidade ===~%")
    (dolist (r (relatorio-profundidade catalogo))
      (format t "~a~%" r))))

(main)