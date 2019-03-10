x <- c(1,2,3,4,5,6,7,8,9)
y <- c(5,3,2,3,4,6,10,12,18)
df1 <- data.frame(x, y)
df1

plot(df1)

x2 <- df1$x^2
x2
df2 <- cbind(df1, x2)
df2
# df1 의 단순 회귀분석과 그 결과를 비교해보자.
plot(lm(y~x, data=df1))
# 다항 회귀 분석을 전개하자.
df2_lm <- lm(y~x+x2, data=df2)
plot(df2_lm)
summary(df2_lm)
