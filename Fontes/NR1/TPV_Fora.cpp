//---------------------------------------------------------------------------
#pragma hdrstop
#include ".\TPV_Fora.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

//---------------------------------------------------------------------------
__fastcall TPV_Fora::TPV_Fora(TBarra *bar1,
                              int    iterPV)
   {
   pbar    = bar1;
   iter_in = iterPV;
   }

//---------------------------------------------------------------------------
__fastcall TPV_Fora::~TPV_Fora(void)
   {
   }

//---------------------------------------------------------------------------

