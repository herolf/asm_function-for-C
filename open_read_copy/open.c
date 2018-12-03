#include <stdio.h>
int main(int argc,char *argv[]){
  int fd_in,fd_out,fd_read,fd_write;
  char buf[500];
  fd_in=open(argv[1] ,0,0666);//fd_in中接受到文件的标识号，在32位系统上，他是一个4字节的int值;
  fd_out=open(argv[2],03101,0666);
  while ((fd_read=read(fd_in,buf,500))>0){
    if(fd_read>0){
printf("Hello %d \n",fd_read);
     fd_write=write(1,buf,fd_read);
     printf("world! %d \n",fd_write);
    }
    else {
      printf("over!%d \n",fd_read);
      break;
    }
    int i=0;
    for( i=0;i<500;i++){
      buf[i]=0;
    }
}
  printf("%d\n",fd_read);
  close(fd_in);
  close(fd_out);
  return fd_in;
}
