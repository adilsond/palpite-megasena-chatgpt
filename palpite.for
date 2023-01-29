program MegaSena
   implicit none
   integer, dimension(6) :: numeros
   integer :: i, j
   character(len=100) :: sorteados, ordenados
   
   print *, "Palpite para Mega Sena"
   sorteados = "As dezenas sorteadas são: "
   do i = 1, 6
      numeros(i) = int(60 * rand() + 1)
      sorteados = sorteados // numeros(i) // " - "
   end do

   sorteados = sorteados(1: len_trim(sorteados) - 2)
   print *, sorteados
   
   ordenados = "As dezenas na ordem são: "
   do i = 1, 6
      do j = i + 1, 6
         if (numeros(j) < numeros(i)) then
            numeros(i) = numeros(i) + numeros(j)
            numeros(j) = numeros(i) - numeros(j)
            numeros(i) = numeros(i) - numeros(j)
         end if
      end do
      ordenados = ordenados // numeros(i) // " - "
   end do
   ordenados = ordenados(1: len_trim(ordenados) - 2)
   print *, ordenados
   
end program MegaSena
