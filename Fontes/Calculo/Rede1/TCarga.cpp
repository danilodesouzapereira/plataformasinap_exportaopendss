//---------------------------------------------------------------------------
#pragma hdrstop
#include ".\TCarga.h"
#include ".\TBarra.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)

//---------------------------------------------------------------------------
__fastcall TCarga::TCarga(TBarra *barra)
   {
   // Salva valores
   this->barra = barra;
   }

//---------------------------------------------------------------------------
__fastcall TCarga::~TCarga(void)
   {
   }

//---------------------------------------------------------------------------

