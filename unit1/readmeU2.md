# 🔍 Unidad 2: Raíces de Ecuaciones

> **Métodos Numéricos | TecNM | AEC-1046**

## 📖 Descripción General

Esta unidad se enfoca en el estudio de **métodos numéricos para encontrar raíces de ecuaciones no lineales**, es decir, los valores de *x* que satisfacen la ecuación *f(x) = 0*. Los métodos aquí presentados son fundamentales en ingeniería para resolver problemas donde las soluciones analíticas son difíciles o imposibles de obtener.

---

## 🎯 Objetivos de Aprendizaje

Al finalizar esta unidad, el estudiante será capaz de:

- ✅ **Aplicar métodos de intervalos** para encontrar raíces de ecuaciones no lineales
- ✅ **Implementar métodos abiertos** con diferentes criterios de convergencia  
- ✅ **Analizar la convergencia y precisión** de cada método numérico
- ✅ **Seleccionar el método más apropiado** según las características del problema
- ✅ **Resolver problemas de ingeniería** aplicando técnicas de búsqueda de raíces

---

## 📚 Contenido Temático

### 2.1 Métodos de Intervalos 📊

Los **métodos de intervalos** requieren de dos puntos iniciales que contengan la raíz, garantizando la convergencia mediante el teorema del valor intermedio.

#### 🔹 Método Gráfico
- **Descripción**: Visualización de la función para identificar aproximadamente las raíces
- **Ventajas**: Proporciona una comprensión visual del comportamiento de la función
- **Limitaciones**: Precisión limitada, dependiente de la escala del gráfico

#### 🔹 Método de Bisección
- **Principio**: Divide repetitivamente el intervalo por la mitad
- **Convergencia**: Garantizada si existe cambio de signo
- **Velocidad**: Lineal (lenta pero segura)
- **Fórmula**: `x_r = (x_l + x_u) / 2`

#### 🔹 Método de Falsa Posición (Regula Falsi)
- **Principio**: Utiliza interpolación lineal para estimar la raíz
- **Ventaja**: Generalmente más rápido que bisección
- **Fórmula**: `x_r = x_u - f(x_u) * (x_l - x_u) / (f(x_l) - f(x_u))`

### 2.2 Métodos Abiertos 🚀

Los **métodos abiertos** requieren uno o más valores iniciales, pero no necesariamente contienen la raíz. Son más rápidos pero no garantizan convergencia.

#### 🔹 Iteración de Punto Fijo
- **Principio**: Reformula f(x) = 0 como x = g(x)
- **Condición de convergencia**: |g'(x)| < 1 en la vecindad de la raíz
- **Fórmula**: `x_{i+1} = g(x_i)`

#### 🔹 Método de Newton-Raphson
- **Principio**: Utiliza la tangente a la curva para aproximar la raíz
- **Ventaja**: Convergencia cuadrática (muy rápida)
- **Requisito**: Conocer f'(x)
- **Fórmula**: `x_{i+1} = x_i - f(x_i) / f'(x_i)`

#### 🔹 Método de la Secante
- **Principio**: Aproxima la derivada usando diferencias finitas
- **Ventaja**: No requiere calcular la derivada analíticamente
- **Convergencia**: Superlineal (1.618...)
- **Fórmula**: `x_{i+1} = x_i - f(x_i) * (x_i - x_{i-1}) / (f(x_i) - f(x_{i-1}))`

#### 🔹 Métodos para Raíces Múltiples
- **Problema**: Los métodos estándar convergen lentamente en raíces múltiples
- **Soluciones**:
  - Método de Newton modificado
  - Deflación polinomial
  - Técnicas de multiplicidad conocida

### 2.3 Aplicaciones 🛠️

#### Problemas de Ingeniería que Requieren Búsqueda de Raíces:

- 🏗️ **Ingeniería Civil**: Análisis de estructuras y cálculo de deflexiones
- ⚡ **Ingeniería Eléctrica**: Análisis de circuitos no lineales
- 🏭 **Ingeniería Química**: Equilibrio de fases y cinética de reacciones
- 🔧 **Ingeniería Mecánica**: Análisis de vibraciones y transferencia de calor
- 💻 **Ingeniería en Sistemas**: Optimización y análisis de algoritmos

---

## 📊 Comparación de Métodos

| Método | Convergencia | Velocidad | Requisitos | Garantía |
|--------|-------------|-----------|------------|----------|
| **Bisección** | Garantizada | Lineal | Cambio de signo | ✅ Sí |
| **Falsa Posición** | Garantizada | Lineal-Superlineal | Cambio de signo | ✅ Sí |
| **Punto Fijo** | Condicional | Lineal | \|g'(x)\| < 1 | ❌ No |
| **Newton-Raphson** | Rápida | Cuadrática | f'(x) conocida | ❌ No |
| **Secante** | Rápida | Superlineal | Dos puntos iniciales | ❌ No |

---

## ⚡ Criterios de Paro

Para todos los métodos, se utilizan criterios de convergencia:

1. **Error Absoluto**: `|x_{i+1} - x_i| < ε`
2. **Error Relativo**: `|x_{i+1} - x_i| / |x_{i+1}| < ε`
3. **Error de la Función**: `|f(x_i)| < ε`
4. **Número Máximo de Iteraciones**: Prevenir bucles infinitos

---

## 🎨 Herramientas y Software

### Lenguajes de Programación Recomendados:
- 🐍 **Python** (NumPy, SciPy, Matplotlib)
- 🔢 **MATLAB/Octave**
- 📊 **SCILAB**

## 🚀 Comenzando

1. **Clona el repositorio**
2. **Instala las dependencias** necesarias
3. **Revisa los ejemplos** en cada carpeta
4. **Ejecuta las pruebas** para verificar implementaciones
5. **Experimenta** con diferentes funciones y parámetros

---

## 📚 Referencias Bibliográficas

- Chapra, S. C., & Canale, R. P. *Métodos Numéricos para Ingenieros*
- Burden, R. L., & Faires, J. D. *Análisis Numérico*
- Mathews, J. H., & Fink, K. D. *Métodos Numéricos con MATLAB*

---

## 👥 Contribuciones

¡Las contribuciones son bienvenidas! Por favor:
1. Fork el proyecto
2. Crea una rama para tu feature
3. Commit tus cambios
4. Push a la rama
5. Abre un Pull Request

---

<div align="center">

**🎓 TecNM | Métodos Numéricos AEC-1046**

</div>