//---------------------------------------------------------------------------
#ifndef TLigacaoCH
#define TLigacaoCH

//---------------------------------------------------------------------------
#include <Classes.hpp>
using namespace std;

class TBarra;
class VTLigacaoG1;

//---------------------------------------------------------------------------
class TLigacaoC : public TObject
   {
   public:  // M�todos
                    __fastcall  TLigacaoC(void      *plig,
                                          int        tipo,
                                          int        sentido,
                                          AnsiString cod_bar2,
                                          AnsiString cod_lig);
                    __fastcall ~TLigacaoC(void);
      VTLigacaoG1 * __fastcall  Dados(TBarra **bar1,
                                      TBarra **bar2,
                                      TBarra **bar3,
                                      int    *sentido);

   public:  // Dados
      void       *plig;     // Ponteiro para TCapSerie, TTrafo2, TTrafo3,
                            // TTrafoEquiv, TrafoZZ ou TTrecho
      int        tipo;      // CapSerie, Trafo2, Trafo3, TrafoEquiv,
                            // TrafoZZ ou Trecho
      int        sentido;   // Para tipo != Trafo3: 0: IC->KC; 1: KC->IC
                            // Para tipo == Trafo3: 0: IC; 1: KC; 2: JC
      AnsiString cod_bar2;  // C�digo da outra barra (simplifica a ordena��o)
      AnsiString cod_lig;   // C�digo da liga��o
   };

//---------------------------------------------------------------------------
#endif
