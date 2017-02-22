library(ggplot2)

targets=1:10
rt=c(.6,.65,.70,.86,1.12,1.50,1.79,2.13,2.15,2.58)
dat=as.data.frame(cbind(targets,rt))
dat$type='human'
rt=c(.5,.65,.8,.95,1.1,1.25,1.4,1.55,1.7,1.85)
dat2=as.data.frame(cbind(targets,rt))
dat2$type='model'
dat=rbind(dat,dat2)

ggplot(dat,aes(targets,rt,colour=type))+
  geom_point()+
  geom_line(aes(lty=type))