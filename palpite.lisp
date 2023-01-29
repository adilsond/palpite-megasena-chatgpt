(defun contains (table element)
  (loop for value in table
        thereis (eq value element)))

(defun sorteio-mega-sena ()
  (let ((numeros-sorteados '()))
    (dotimes (i 6)
      (let ((numero (random 60)))
        (while (contains numeros-sorteados numero)
          (setf numero (random 60)))
        (push numero numeros-sorteados)))
    (format t "Palpite para Mega-Sena~%~%As dezenas sorteadas são: ~{~A~^ - ~}~%As dezenas na ordem são: ~{~A~^ - ~}~%" (sort numeros-sorteados #'<) numeros-sorteados)))
