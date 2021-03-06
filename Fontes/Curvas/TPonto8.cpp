//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop
#include "TPonto8.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

//---------------------------------------------------------------------------
VTPonto* __fastcall NewObjPonto8(void)
   {
   try{
      return(new TPonto8());
      }catch(Exception &e)
         {
         return(NULL);
         }
   }
/*
//---------------------------------------------------------------------------
VTPonto* __fastcall NewVetObjPonto8(int num_pto)
   {
   try{
      return(new TPonto8[num_pto]);
      }catch(Exception &e)
         {
         return(NULL);
         }
   }
*/
//---------------------------------------------------------------------------
__fastcall TPonto8::TPonto8(void)
   {
   //inicia ponteiro da classe base
   PD.valor = valor;
   }

//---------------------------------------------------------------------------
__fastcall TPonto8::~TPonto8(void)
   {
   //nada a fazer
   }

//---------------------------------------------------------------------------
VTPonto* __fastcall TPonto8::Clone(int num_val)
   {
   //variáveis locais
   TPonto8 *clone;

   //cria objeto TPonto8
   if ((clone = (TPonto8*)(NewObjPonto8())) != NULL)
      {//copia hora inicial e final
      clone->HM_ini = HM_ini;
      clone->HM_fim = HM_fim;
      //copia valores
      for (int n = 0; n < 8; n++) {clone->valor[n] = valor[n];}
      }
   return(clone);
   }

//---------------------------------------------------------------------------
//eof
