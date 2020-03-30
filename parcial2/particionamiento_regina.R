library(mvtnorm)
# Generamos los datos
n1 <- n2 <- n3 <- 100
d <- 3    # día de nacimiento
m <- 2    # mes de nacimiento
a <- 1999 # año de nacimiento

d1 <- round(d/30, 2)
d2 <- round(m/12, 2)
d3<-round(a/2020, 2)

# Matrices de covarianza
s1 <- matrix(c(1, d1, d1, 1), ncol = 2)
s2 <- matrix(c(1.5, d2, d2, 1.5), ncol = 2)
s3 <- matrix(c(2, d3, d3, 2), ncol = 2)

# Vector de medias
m1 <- c(m,m)
m2 <- m1+m
m3 <- m2+m

set.seed(a)
x1 <-rmvnorm(n1, m1, s1)
x2 <-rmvnorm(n2, m2, s2)
x3 <-rmvnorm(n3, m3, s3)

x <- c(x1[,1], x2[,1], x3[,1])
y <- c(x1[,2], x2[,2], x3[,2])

# Datos para trabajar
dataset <- data.frame(cbind(x, y))

# 1. Aplica TODO lo aprendido en el tema de métodos de particionamiento
# aplicando todos los métodos vistos y realizando conclusiones estaddísticas en cada uno.

# 2. Aplica el método de evaluación y concluya

