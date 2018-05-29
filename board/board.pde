final int KURO = 1;
final int SHIRO = -1;
final int AKI = 0;
final int SOTO = 255;
final int BANSIZE = 640;
final int CELLSIZE = BANSIZE / 8;
final int STONESIZE = round(CELLSIZE * 0.9);

int[][] ban;
int player=KURO;
int teban = KURO;                                // 初手黒
int[] p=new int [2];                                //プレイヤー位置[0]=x,[1]=y


void setup()
{
//  size(BANSIZE, BANSIZE);
  size(640, 640);
  ban = new int[10][10];
  for(int y=0; y<10; y++)
  {
    for(int x=0; x<10; x++)
    {
      ban[x][y] = AKI;
      if( x==0 || x==9 || y==0 || y==9 )
      {
        ban[x][y] = SOTO;
      }
    }
  }
  ban[4][5] = SHIRO;
  ban[5][4] = SHIRO;
  ban[5][5] = KURO;
  ban[4][4] = KURO;
  p[0]=1;
  p[1]=1;
}

void showBan(int[][] b,int[] p)
{
  background(0,96,0);
  for(int i=0; i<9; i++)
  {
    line(0,i*CELLSIZE,BANSIZE,i*CELLSIZE);
    line(i*CELLSIZE,0,i*CELLSIZE,BANSIZE);
  }
  
  for(int y=1; y<=8; y++)
  {
    for(int x=1; x<=8; x++)
    {
      int xpos = x*CELLSIZE-CELLSIZE/2;        //xの表示位置  
      int ypos = y*CELLSIZE-CELLSIZE/2;        //yの表示位置
      switch(b[x][y])
      {
        case SOTO:
          break;
        case AKI:
          break;
        case KURO:
            fill(0,0,0);
            ellipse(xpos,ypos,STONESIZE,STONESIZE);
          break;
        case SHIRO:
            fill(256,256,256);
            ellipse(xpos,ypos,STONESIZE,STONESIZE);
          break;
      }
      if (p[0]==x&&p[1]==y){
         fill(211,211,211);
         ellipse(xpos,ypos,STONESIZE,STONESIZE);
      }
    }
  }
} 

void kettei(){
  if(player==teban){
    p[0]=mouseX/CELLSIZE+1;
    p[1]=mouseY/CELLSIZE+1;
    if (mousePressed == true){
      ban[p[0]][p[1]]=player;
      teban=-player;
      p[0]=0;
    }
    
   }
   else {
     
   }
}
void game(){
   kettei();
}

void draw()
{
  game();
  showBan(ban,p);
}
