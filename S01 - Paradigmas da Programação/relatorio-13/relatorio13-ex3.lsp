(defstruct item nome tipo preco forca-magica)

(defun adiciona-imposto (preco)
  (* preco 1.15))

(defun bonus-maldicao (forca)
  (if (> forca 80)
      (* forca 1.5)
      forca))

(defun descricao-venda (item)
  (format nil "~a | Preco: ~,2f | Forca: ~,2f"
          (item-nome item)
          (adiciona-imposto (item-preco item))
          (bonus-maldicao (item-forca-magica item))))

(defun processa-venda (catalogo)
  (mapcar #'descricao-venda
          (mapcar (lambda (i)
                    (make-item :nome (item-nome i)
                               :tipo (item-tipo i)
                               :preco (item-preco i)
                               :forca-magica (bonus-maldicao (item-forca-magica i))))
                  (remove-if-not (lambda (i) (eq (item-tipo i) 'Arma)) catalogo))))

(defun main ()
  (let ((catalogo (list
                   (make-item :nome "Espada Sombria"  :tipo 'Arma     :preco 150.0 :forca-magica 90.0)
                   (make-item :nome "Pocao de Cura"   :tipo 'Pocao    :preco 30.0  :forca-magica 20.0)
                   (make-item :nome "Adaga Maldita"   :tipo 'Arma     :preco 80.0  :forca-magica 60.0)
                   (make-item :nome "Amuleto Antigo"  :tipo 'Artefato :preco 200.0 :forca-magica 85.0)
                   (make-item :nome "Lanca do Caos"   :tipo 'Arma     :preco 120.0 :forca-magica 95.0))))

    (dolist (r (processa-venda catalogo))
      (format t "~a~%" r))))

(main)