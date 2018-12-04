Population miGente;
int generacion=0;
int numeroDeGeneraciones=1000;  
void setup() 
{
  size(500, 500);
  miGente = new Population(300,15);
}

void draw() 
{
  generacion++;
   background(0);
   miGente.createPool("1442635/1766527"); 
   miGente.showText();
   if(generacion == numeroDeGeneraciones)
   {
     noLoop();
   }
}
