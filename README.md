1-A) En mi PC, cuando ejecuto el archivo conhilos.py tiene un tiempo promedio de 4,03 segundos, este script está utilizando hilos que ejecuta varias tareas al mismo tiempo. En cambio, cuando ejecuto el archivo sinhilos.py tiene un tiempo promedio de 5,15 segundos, este script no está usando hilos ya que cada tarea se ejecuta, termina y va a la siguiente.

B) Cuando comparé con mi compañero observamos que no son iguales y si lo ejecutamos múltiples veces, observamos que el tiempo de ejecución varia. (ósea no es casi siempre un mismo valor)

C) Lo que provoca al descomentar las líneas 11,12,19 y 20 es que se modifica la variable acumulador al mismo tiempo en los procesos sumador y restador, causando dilemas porque los 2 procesos tratan de acceder a la variable acumulador al mismo tiempo. Y si comentamos esas líneas los 2 procesos se ejecutan uno después del otro, sin causar confusiones.

2-B) 
![Diagrama Hamburguesas1 drawio](https://github.com/FrancoDevaux/ASO2024TPs/assets/166407581/e8d55833-1433-45d5-a296-eceb821abebe)
