//---------------------------------------------------------------------------
#pragma hdrstop
#include "TDataRede.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
//---------------------------------------------------------------------------
__fastcall TDataRede::TDataRede(VTRede *rede, RES_CONF presRede)
	{
	this->rede = rede;
	pres = presRede;
	pres.fat_dec = 1.;
	pres.fat_fec = 1.;
	}
//---------------------------------------------------------------------------
__fastcall TDataRede::~TDataRede(void)
	{
	}
//---------------------------------------------------------------------------
