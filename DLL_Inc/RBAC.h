//---------------------------------------------------------------------------
#ifndef RBACH
#define RBACH

//---------------------------------------------------------------------------
#include <Classes.hpp>
#include "Export.h"

//---------------------------------------------------------------------------
class VTApl;
class VTRBACManager;

//-----------------------------------------------------------------------------
// fun��es da DLL
//-----------------------------------------------------------------------------
EXPORT VTRBACManager* __fastcall DLL_NewObjRBACManager(VTApl *apl_owner);

#endif
//---------------------------------------------------------------------------
//eof

