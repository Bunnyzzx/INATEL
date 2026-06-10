(defstruct local nome elemento dificuldade recompensa)

(defun bonus-elemental (loc)
  (cond ((or (eq (local-elemento loc) 'Pyro)
             (eq (local-elemento loc) 'Electro)) (* (local-recompensa loc) 1.20))
        ((eq (local-elemento loc) 'Cryo) (* (local-recompensa loc) 1.10))
        (t (local-recompensa loc))))

(defun vale-a-pena (loc)
  (and (> (bonus-elemental loc) 500)
       (<= (local-dificuldade loc) 3)))

(defun rota-de-farm (catalogo)
  (mapcar (lambda (loc)
            (format nil "~a: ~,2f" (local-nome loc) (bonus-elemental loc)))
          (remove-if-not #'vale-a-pena catalogo)))

(defun main ()
  (let ((catalogo (list
                   (make-local :nome "Mondstadt" :elemento 'Anemo   :dificuldade 2 :recompensa 400.0)
                   (make-local :nome "Liyue"     :elemento 'Pyro    :dificuldade 3 :recompensa 480.0)
                   (make-local :nome "Inazuma"   :elemento 'Electro :dificuldade 4 :recompensa 600.0)
                   (make-local :nome "Sumeru"    :elemento 'Cryo    :dificuldade 2 :recompensa 510.0)
                   (make-local :nome "Fontaine"  :elemento 'Hydro   :dificuldade 1 :recompensa 350.0))))

    (format t "=== Completo ===~%")
    (dolist (loc catalogo)
      (format t "~a | ~a | Dif: ~a | Bonus: ~,2f~%"
              (local-nome loc)
              (local-elemento loc)
              (local-dificuldade loc)
              (bonus-elemental loc)))

    (format t "~%=== Rota de Farm ===~%")
    (dolist (r (rota-de-farm catalogo))
      (format t "~a~%" r))))

(main)