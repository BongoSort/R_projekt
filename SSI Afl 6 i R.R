# opgave a

X=c(-2:12)      # Vi saetter x til at vaere fra -2 til 12
plot(X, dpois(X,lambda = 3))    # og plotter punkterne med lambdavaerdien 3



# opgave b
N=1000000
X=dpois(N, 3)
mean(X)



N=10000       # Antal simuleringer
X=rpois(N, 3) # stokastisk variabel med poisson(3) fordeling
Y=cumsum(X)   # cumulativ sum af alle stok. variabler.
n=c(1:10000)  # rækken af simuleringer (i hele tal) fra 1 til 10000
plot(Y/n)     # plot af kumulativ sum over antal simulering n:  Y/1, Y/2, ... Y/10000

# opgave c
# Find \sqrt X

# mean sqrt X value
N=100000      # Antal simuleringer
X=rpois(N, 3) # stokastisk variabel med poisson(3) fordeling
SX=X^(1/2)    # kvadratrod af X gemmes i SX
mean(SX)      # mean value af SX


# Plot for konvergeringen mod værdien 
N=100000      # Antal simuleringer
X=rpois(N, 3) # stokastisk variabel med poisson(3) fordeling
SX=X^(1/2)    # kvadratrod af X gemmes i SX
Y=cumsum(SX)  # kumulativ summ af SX gemmes i Y
n=c(1:100000) # raekken af simuleringer fra 1 til 100.000
plot(Y/n)     # plot af kumulativ sum af kvadratrod X,
              #  som konvergerer mod 1.63


# opgave d)
k=c(1:100000)     # De k´de simuleringer
X1 = rpois(k,3)   # 
X2 = rpois(k,3)   #
MX1 = mean(X1^2)  #
MX2 = mean(X2)^2  #
varians=MX1-MX2   #
varians
SD=sqrt(varians)  #
SD


# kan erstattes med:
X=rpois(100000, 3) # stok variabel X med lambda 3
sd(X)              # Standard deviation/ middelafvigelse for X





##################################
# Author: Rune Schuster

X=c(0:10000)  # Vi saetter x til at vaere fra 0 til 10
Y=rpois(X,lambda = 3)
M=mean(Y)
plot(X, Y)   
sd(Y)
#TEST

# opgave d)
k=c(1:100000) 
X1 = rpois(k,3)
X2 = rpois(k,3)
MX1 = mean(X1^2)
MX2 = mean(X2)^2
MX1
MX2
varians=MX1-MX2
varians
SD=sqrt(varians)
SD


X=rpois(100000, 3) # stok variabel X med lambda 3
sd(X)              # Standard deviation/ middelafvigelse for X






X=10      # Vi saetter x til at vaere fra -2 til 12
Y=dpois(X,lambda = 3)
Y
plot(X, Y)  

X=rpois(100000,lambda = 3)
X2=X^2 
MX2=mean(X2)
MX2




X=rpois(100000,3) # stok var X, for n=100.000, lambda=3
X2=X^2            # X^2
MX2=mean(X2)      # E[X^2]
MX2               # Print Resultat



# LLN for Geometric(1/2)

X=rpois(10000,3)  # Simuler 10000 stok. variable med geometric(1/2) fordeling
# Husk at R parametriserer anderledes: derfor `+1'  
Y=cumsum(X)           # kumulativ sum
k=c(1:10000)          # vektor med stigende tal 
Z=Y/k                 # vektor med gennemsnit
plot(Z)

# Hvis man vil, kan man tilf�je linjen, hvor det konvergerer hen if�lge LLN
# lines(c(x1,x2),c(y1,y2)) tegner en linje fra (x1,y1) til (x2,y2)
lines(c(0,10000),c(2,2),col='blue')


# Integrale i R
D(expression(-0.5*log(X)), "X")


# TØ 9/11
# 8.6.0 problem 1
# skriv tal ned, lav en vector:c(165.5,175.4,144.1,178.5, ...osv)
# x = sum(c)
# Var(x) + flere beregninger.

# TØ 16/11
# ## Kode for confidence interval when sigma, mu is unknown.
q(hisq(1-p, n-1))
# p = x^2
x=2


qgamma(0.05, 10, 5)

qgamma(0.05, 1000, 500)

qgamma(0.05, 1000000, 500000)


### 

pnorm(-1.645)


W = ((21/225)-0.1)/(0.291548/sqrt(225))
W

pnorm(W)


####
(21-22.5)/(sqrt(22.5*(0.9)))


### matrix: BRUG PAKKE expm!!!

B = matrix( 
  +   c(2, 4, 3, 1, 5, 7), ## værdier
  +   3, ## antal Rækker/Rows
  +   2) ## antal Søjler/Columns

B             # B has 3 rows and 2 columns 



## PiNul
PiNul = matrix( 
  +   c(0.36, 0.64), # værdier
  +   1, # antal Rækker/Rows
  +   2) # antal Søjler/Columns
## PiNul på en smart måde
PiNul = matrix( 
  +   c(0.36, 0.64), # værdier
  +   nrow=1, byrow=TRUE) # antal Rækker/Rows

## P er state transition matrix
P = matrix( 
  + c(0.94,0.12,0.06,0.88), 
  nrow=2, byrow = TRUE)
P
## Pi i anden
PiTo = PiNul %*% P %*% P
PiTo
## Check om summen giver 1 (skal summe til 100%)
PiTo[,1] + PiTo[,2]
## Pi i tredje
PiTre = PiNul %*% P %*% P %*% P
PiTre
## Pi i tredje på en smart måde
PiTre = PiNul %*% (P %^% 3)
PiTre
## Check om summen giver 1 (skal summe til 100%)
PiTre[,1] + PiTre[,2]


### udregning af Var(X)
### Var(X)=E[X^2]-[EX]^2
X=       # indsæt
EX=0.13      #indsæt
result=
result=

## PiNul
PiNul = matrix( 
  +   c(0.25, 0.25, 0.5), # værdier
  + 1, # antal Rækker/Rows
  +   3) # antal Søjler/Columns

## P er state transition matrix
P = matrix( 
  + c(0.9, 0.075, 0.025, 0.15, 0.8, 0.05, 0.25, 0.25, 0.5), 
  nrow=3, byrow = TRUE)
P
## Pi i tredje
PiTre = PiNul %*% (P %^% 3)
PiTre
## Pi i 100ede
PiMange = PiNul %*% (P %^% 100)
PiMange

## Hvordan man finder Z_a
alpha= ##indsæt alpha her (Typisk 0.05 eller 0.10)
qnorm(1-alpha)
## Hvordan man finder -Z_a
alpha=0.05 ##indsæt alpha her (Typisk 0.05 eller 0.10)
-qnorm(1-alpha)
## hvordan man finder Z_a/2
alpha=0.01 #indsæt alpha her
alphahalve=alpha/2 ##alpha/2
qnorm(1-alphahalve)

## lineær regression
xi= #specifik x_i
x= # indsæt alle xværdier her
y= # indsæt alle y værdier her
betaet=cov(x,y)/var(x)
betanul=mean(y)-betaet*mean(x)
# y_i som skal findes via x_i:
yi=betanul+betaet*xi
yi

##lineær regression opgave
xi=5 #specifik x_i
x=c(8.17,8.31,4.11,6.51,3.94,77,0.06.22,8.18,6.06,6.52,7.16) # indsæt alle xværdier her
y=c(28.01,24.21,16.80,23.10,12.28,24.20,24.85,17.95,23.07,22.86) # indsæt alle y værdier her
betaet=cov(x,y)/var(x)
betanul=mean(y)-betaet*mean(x)
# y_i som skal findes via x_i:
yi=betanul+betaet*xi
yi

#integraler BRUG Qalc



##testing
x=(3/4)
(3/8)*x^2

# find min and max:
funky= #indsæt funktion her
min(funky) #min
max(funky) #max
range(funky) # både min og max

funky=((3*(log(x)^2))/(64*x)) #indsæt funktion her
min(funky) #min
max(funky) #max
range(funky) # både min og max


d=(cos(x)+2)
min(d)

1 - pbinom(2, 80, 0.05)

#regression line
x_i=2 ##givet x_i
x=c(1,2,3) ##indsæt korrekt x værdi
y=c(1,2,3) ##indsæt korrekt y værdi
beta1=cov(x,y)/var(x) #Formel for beta 1
beta0=mean(y)-beta1*mean(x) ## formel for beta 0
beta0+beta1*x_i ## formel for y hat (y_hat=beta_0+beta_1*x_i)

##regression line eksempel udregning for y hat
x_i=2 ##givet x_i
x=c(1.1,0.0,5.3,3.8,9.2,6.9,0.7,9.2) ##indsæt korrekt x værdi
y=c(4.5,-0.1,11.6,5.9,16.4,16.1,1.8,20.6) ##indsæt korrekt y værdi
beta1=cov(x,y)/var(x)
beta0=mean(y)-beta1*mean(x)
beta0+beta1*x_i


## opgave med hypotese test 
x=c(-1.7,2.2,3.2,-0.8,2.0,0.7,-2.2,0.5,3.0)
k=sum(x)
k/9
## t-distribution
qt(1-0.05,8)

##qnorm husk 1- her
qnorm(1-p)

## P er state transition matrix : BRUG PAKKE expm
P = matrix( 
  + c(0.2,0.8,0,0,0,0.3,0.7,0,0,0,0.5,0.5,0.8,0,0,0.2), 
  nrow=4, byrow = TRUE)
P
## N-step transition , til at finde ss for n steps:
n=7 ## antal steps man vil finde ss for
P %^% n

r=matrix(c(0,0,0.3,0.7),nrow=1,byrow=TRUE)
r
a=1/r
a