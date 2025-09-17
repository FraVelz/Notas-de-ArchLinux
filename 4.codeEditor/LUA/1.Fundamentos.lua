
-- Comentario de una linea :)

--[[
Esto es un comentario,
multilinea, 
que tal :v
]]

-- TIPOS DE VARIABLES ---------------------------

--[[
En lua existen 2 tipos de variables, que son:
* Locales
* Globales

Lo mas recomendado es utilizar variables Locales,
cada vez que se pueda, por obtimizacion y para
evitar errores de codigo.

para la variable local es nesesaria la palabra 
reservada "local".

las variables locales como su nombre lo indica
se pueden acceder de forma local, las globales no 
aunque definas una variable global dentro de una
funcion puede ser accedida afuera de la funcion.
]]

global = 10 -- Variable Global (por defecto)

local var_local = 10 -- Variable Local

-- dato curioso para tener crear 2 variables en 
-- una linea se puede hacer lo siguiente.

local a,b = 10, 20

-- a=10 asi quedaria la variable a 
-- b=20 y la variable b.

-- TIPOS DE DATOS -------------------------------

--[[
Lua es de tipado debil, permitiendo asi no 
nesesitar, colocar el tipo de dato de las 
variables como en python.
]]

-- 1. nil (nulo)
-- ausencia de valor o variable no inicializada.

local x
print(x)  -- nil
x = nil   -- también se puede asignar 
          -- explícitamente


-- 2. boolean (boleano)

local activo = true
local apagado = false


-- 3. number (numero)

local edad = 17       -- entero
local altura = 1.75   -- flotante

-- 4. string

local nombre = "Francisco"
local apellido = 'Velez'

local saludo = [[Hola,
esto es un string
multilínea]]

-- 5. TABLE
-- Se usan para **listas, arrays, diccionarios, 
-- objetos**, etc.

-- Se definen con `{}`.

-- Lista
local numeros = {1, 2, 3, 4}

-- Diccionario
local persona = {nombre="Francisco", edad=17}

print(persona.nombre)  -- Francisco

-- Tipos dinámicos

local x = 5       -- x es number
x = "Hola"        -- ahora x es string

-- Bonus: Funcion util integrada para tipos de
-- datos.

-- CONVERSION DE DATOS --------------------------
-- tambien conocidos como coercion.

-- Devuelve `nil` si no puede convertir.
-- para cada una de las funciones.

-- 1. Conversiones manuales

-- Numeros
local s = "123"
local n = tonumber(s)  -- 123 (number)
print(n + 1)           -- 124

local mal = "hola"
--print(tonumber(mal))   -- nil


-- También puedes pasar un **segundo parámetro**
-- para base (decimal, hexadecimal, etc.):

local hex = "1A"
print(tonumber(hex, 16))  -- 26 en decimal

-- Cadena de texto

local n = 45
local s = tostring(n)
print(s)          -- "45"
print(type(s))    -- string


-- Funciona con números, booleanos y hasta tablas 
-- (la tabla se mostrará como su referencia de 
-- memoria).

print(tostring(true))  -- "true"

-- Conversión automática limitada

-- Lua puede **coercionar automáticamente strings 
-- a numbers** en operaciones aritméticas si el 
-- string representa un número válido:

local a = "10"
local b = a + 5    -- Lua convierte "10" a 10 
                   -- automáticamente
print(b)           -- 15

-- Pero si el string no es un número, Lua lanzará 
-- un **error**:

local a = "hola"
--print(a + 5)  -- ERROR

-- No hay conversión automática entre booleanos y 
-- números.

-- TODOS LOS OPERADORES EN LUA ------------------

-- 1. OPERADORES ARITMÉTICOS
local a, b = 10, 3

print("Aritméticos:")
print("Suma:            ", a + b) -- 13
print("Resta:           ", a - b) -- 7
print("Multiplicación:  ", a * b) -- 30
print("División:        ", a / b) -- 3.3333
print("División entera: ", a // b)-- 3
print("Módulo:          ", a % b) -- 1
print("Potencia:        ", a ^ b) -- 1000
print("Negación unaria: ", -a)    -- -10

-- 2. OPERADOR DE CONCATENACIÓN
print("\nConcatenación de strings:")

local s1, s2 = "Hola", "Mundo"
print(s1 .. " " .. s2)  -- "Hola Mundo"

-- 3. OPERADORES DE COMPARACIÓN
print("\nComparaciones:")

print("Igualdad:      ", a == b) -- false
print("Diferente:     ", a ~= b) -- true
print("Menor que:     ", a < b)  -- false
print("Menor o igual: ", a <= b) -- false
print("Mayor que:     ", a > b)  -- true
print("Mayor o igual: ", a >= b) -- true

-- 4. OPERADORES LÓGICOS
print("\nLógicos:")

local x, y = true, false
print("AND: ", x and y) -- false
print("OR: ",  x  or y) -- true
print("NOT x: ", not x) -- false
print("NOT y: ", not y) -- true

-- OPERADOR DE LONGITUD
print("\nLongitud de strings y tablas:")

local str = "Lua"
local tbl = {1,2,3,4}

print("Longitud string: ", #str)  -- 3
print("Longitud tabla:  ", #tbl)  -- 4

-- OPERADORES BIT A BIT (Lua 5.3+)
print("\nBit a bit:")

local p, q = 5, 3  -- 5=101, 3=011 en binario

print("AND (&): ", p & q) -- 1 (001)
print("OR (|): ",  p | q) -- 7 (111)
print("XOR (~): ", p ~ q) -- 6 (110)
print("NOT (~p): ",   ~p) -- -6

-- Desplazamiento
print("Des. izquierda (<<): ", p << 1) -- 10
print("Des. derecha   (>>): ", p >> 1) -- 2

-- ESCTRUCTURAS DE CONTROL ----------------------

-- 1. IF / ELSEIF / ELSE

local x = 10

if x > 10 then
    print("Mayor que 10")

elseif x == 10 then
    print("Igual a 10")   -- Se imprime

else
    print("Menor que 10")
end

print("\n---")

-- 2. WHILE (bucle mientras la condición sea 
-- verdadera)

local i = 1

while i <= 3 do
    print("While: ", i)
    i = i + 1
end

print("\n---")

-- 3. REPEAT / UNTIL (similar a do...while, se 
-- ejecuta al menos una vez, mientras la 
-- condicion sea falsa).

local j = 1

repeat
    print("Repeat: ", j)
    j = j + 1
until j > 3

print("\n---")

-- 4. FOR NUMÉRICO (contando de inicio a fin)
for k = 1, 3 do
    print("For numérico: ", k)
end

print("\n---")

-- 5. FOR NUMÉRICO CON PASO
for k = 1, 10, 2 do  -- paso de 2
    print("For con paso: ", k)
end

print("\n---")

-- 6. BREAK (salir de un bucle)
for n = 1, 5 do
    if n == 3 then
        break
    end
    print("Break: ", n)
end

print("\n---")

-- 7. GOTO (Lua 5.2+)
local p = 1

::inicio::
print("Goto: ", p)
p = p + 1

if p <= 3 then
    goto inicio
end

print("\n---")

-- FUNCIONES EN LUA -----------------------------

-- 1. Funciones básicas

-- Declaración normal
function saludar(nombre)
    print("Hola, " .. nombre)
end

saludar("Francisco")  -- Hola, Francisco


* `function nombre(args) … end` es la forma estándar.
* Se pueden llamar después de ser definidas.

---

## 2. Función anónima (asignada a variable)

```lua
local suma = function(a, b)
    return a + b
end

print(suma(3, 4))  -- 7
```

* No tiene nombre propio, se usa a través de la variable `suma`.
* Útil para **callbacks** o pasar funciones como argumentos.

---

## 3. Función local

```lua
local function multiplicar(a, b)
    return a * b
end

print(multiplicar(2, 5))  -- 10
```

* Se declara con `local` para **evitar que sea global**.
* Solo puede ser usada dentro del bloque donde se definió.

---

## 4. Funciones que retornan múltiples valores

```lua
local function operaciones(a, b)
    return a+b, a-b, a*b
end

local suma, resta, producto = operaciones(5, 3)
print(suma, resta, producto)  -- 8 2 15
```

* Lua permite retornar **varios valores** y asignarlos a varias variables.

---

## 5. Funciones como argumentos (funciones de orden superior)

```lua
local function aplicar(func, a, b)
    return func(a, b)
end

local resultado = aplicar(function(x, y) return x^y end, 2, 3)
print(resultado)  -- 8
```

* Se puede **pasar cualquier función** como argumento.

---

## 6. Funciones dentro de tablas (simulando métodos de objetos)

```lua
local persona = {
    nombre = "Francisco",
    saludar = function(self)
        print("Hola, soy " .. self.nombre)
    end
}

persona:saludar()  -- Hola, soy Francisco
```

* Usando `:` Lua pasa automáticamente `self` como primer argumento.

---

## 7. Funciones recursivas

```lua
local function factorial(n)
    if n == 0 then
        return 1
    else
        return n * factorial(n-1)
    end
end

print(factorial(5))  -- 120
```

* Se llaman a sí mismas para resolver problemas repetitivos.

---

### ✅ Resumen de tipos de funciones en Lua

| Tipo             | Sintaxis                            | Uso                                          |
| ---------------- | ----------------------------------- | -------------------------------------------- |
| Normal           | `function nombre(args) … end`       | Función global por defecto                   |
| Local            | `local function nombre(args) … end` | Evita conflictos, más rápido                 |
| Anónima          | `local var = function(args) … end`  | Para callbacks y asignaciones                |
| Retorno múltiple | `return a,b,c`                      | Retornar varios valores a la vez             |
| Orden superior   | Pasar o retornar funciones          | Funciones como datos                         |
| Métodos de tabla | `tabla:func()`                      | Simular objetos con `self`                   |
| Recursiva        | Llamarse a sí misma                 | Problemas repetitivos o factorial, Fibonacci |

