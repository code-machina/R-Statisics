# 단순회귀 샘플
set.seed(2)
x=runif(10, 0, 11)
y=2 + 3*x + rnorm(10, 0, 0.2)
dfrm=data.frame(x, y)
dfrm
m<-lm(y~x, data=dfrm)
summary(m)

# 다중회귀 샘플
set.seed(2)
u=runif(10, 0, 11)
v=runif(10, 11, 20)
w=runif(10, 1, 30)
y=3 + 0.1*u + 2*v -3*w + rnorm(10, 0, 0.1)
dfrm=data.frame(y,u,v,w)
dfrm
m<-lm(y~u+v+w, data=dfrm)
m
summary(m)
# 추정 결과 

# 다항회귀분석
data(cars)
head(cars)
plot(cars)

speed2 <- cars$speed^2
cars <- cbind(speed2, cars)
head(cars)
plot(cars)
plot(lm(dist~speed, data=cars))
summary(lm(dist~speed, data=cars))
