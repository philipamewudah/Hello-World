x<-double(50)
u_1<-runif(1,0,1)

## The markov process at time 0

if (0<=u_1 && u_1<=0.5){
  x[1]<-1
  } else if (0.5<u_1 && u_1<=3/4){
  x[1]<-2
  } else {
  x[1]<-3
}

## The markov process after time 0

for (i in 2:50) {
  u_i<-runif(1,0,1)
  if (x[i-1]==1){
      x[i]<-2
    } else if (x[i-1]==2){
      if (0<=u_i && u_i<=1/3){
        x[i]<-1
      } else {
        x[i]<-3
      }
    }else {
      if (0<=u_i && u_i<=1/3){
        x[i]<-1
      } else if (1/3<u_i && u_i<=2/3){
        x[i]<-2
      } else {
        x[i]<-3
      }
    }
}

n<-c(1:50)
plot(n,x,type = 'l',ylab = "X_n")
