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
int px;                    //プレイヤー位置
int py;

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
}

void showBan(int[][] b)
{
  background(0,96,0);
  for(int i=0; i<9; i++)
  {
    line(0,i*CELLSIZE,BANSIZE,i*CELLSIZE);
    line(i*CELLSIZE,0,i*CELLSIZE,BANSIZE);
  }

  for(int y=1; y<=7; y++)
  {
    for(int x=1; x<=7; x++)
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
    }
  }
} 


void kettei(){
  if(player==teban){
     
   }
   else {
     
   }
}
void game(){
   kettei();
}

void draw()
{
  showBan(ban);
}
