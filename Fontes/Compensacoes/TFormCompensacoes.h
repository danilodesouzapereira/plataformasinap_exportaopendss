//---------------------------------------------------------------------------
#ifndef TFormCompensacoesH
#define TFormCompensacoesH

//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "TFormEdt.h"
#include <ActnList.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <ImgList.hpp>
#include <Menus.hpp>
#include <ToolWin.hpp>
#include <Grids.hpp>
#include <System.Actions.hpp>

//---------------------------------------------------------------------------
class VTCompensacoes;
class VTApl;

//---------------------------------------------------------------------------
class TFormCompensacoes : public TFormEdt
	{
	__published:
	TPageControl *PageControl;
	TTabSheet *TabSheetDados;
	TTabSheet *TabSheetResultados;
	TPanel *Panel1;
	TPanel *Panel2;
	TGroupBox *GroupBox1;
	TComboBox *ComboBoxSubestacoes;
	TGroupBox *GroupBox17;
	TPageControl *PageControlLimites;
	TTabSheet *TabSheetMT;
	TPageControl *PageControlMt;
	TTabSheet *TabSheetMtUrb;
	TGroupBox *GroupBoxMtUrbDMIC;
	TLabel *Label39;
	TEdit *EditMtUrbDMIC;
	TGroupBox *GroupBoxMTUrbDIC;
	TLabel *Label40;
	TLabel *Label41;
	TLabel *Label42;
	TEdit *EditMtUrbAnuDIC;
	TEdit *EditMtUrbTriDIC;
	TEdit *EditMtUrbMenDIC;
	TGroupBox *GroupBoxMtUrbFIC;
	TLabel *Label28;
	TLabel *Label29;
	TLabel *Label30;
	TEdit *EditMtUrbAnuFIC;
	TEdit *EditMtUrbTriFIC;
	TEdit *EditMtUrbMenFIC;
	TTabSheet *TabSheetMtRur;
	TGroupBox *GroupBoxMtRurDMIC;
	TLabel *Label31;
	TEdit *EditMtRurDMIC;
	TGroupBox *GroupBoxMtRurDIC;
	TLabel *Label32;
	TLabel *Label34;
	TLabel *Label35;
	TEdit *EditMtRurAnuDIC;
	TEdit *EditMtRurTriDIC;
	TEdit *EditMtRurMenDIC;
	TGroupBox *GroupBoxMtRurFIC;
	TLabel *Label36;
	TLabel *Label37;
	TLabel *Label38;
	TEdit *EditMtRurAnuFIC;
	TEdit *EditMtRurTriFIC;
	TEdit *EditMtRurMenFIC;
	TTabSheet *TabSheetBT;
	TPageControl *PageControlBt;
	TTabSheet *TabSheetBtUrb;
	TGroupBox *GroupBoxBtUrbDMIC;
	TLabel *Label46;
	TEdit *EditBtUrbDMIC;
	TGroupBox *GroupBoxBtUrbDIC;
	TLabel *Label47;
	TLabel *Label48;
	TLabel *Label49;
	TEdit *EditBtUrbAnuDIC;
	TEdit *EditBtUrbMenDIC;
	TGroupBox *GroupBoxBtUrbFIC;
	TLabel *Label50;
	TLabel *Label51;
	TLabel *Label52;
	TEdit *EditBtUrbAnuFIC;
	TEdit *EditBtUrbTriFIC;
	TEdit *EditBtUrbMenFIC;
	TTabSheet *TabSheetBtRur;
	TGroupBox *GroupBoxBtRurDMIC;
	TLabel *Label33;
	TEdit *EditBtRurDMIC;
	TGroupBox *GroupBoxBtRurDIC;
	TLabel *Label25;
	TLabel *Label26;
	TLabel *Label27;
	TEdit *EditBtRurAnuDIC;
	TEdit *EditBtRurTriDIC;
	TEdit *EditBtRurMenDIC;
	TGroupBox *GroupBoxBtRurFIC;
	TLabel *Label53;
	TLabel *Label54;
	TLabel *Label55;
	TEdit *EditBtRurAnuFIC;
	TEdit *EditBtRurTriFIC;
	TEdit *EditBtRurMenFIC;
	TEdit *EditBtUrbTriDIC;
	TGroupBox *GroupBox4;
	TLabel *Label65;
	TLabel *Label66;
	TLabel *Label68;
	TLabel *Label71;
	TEdit *EditComp2Tri;
	TEdit *EditComp3Tri;
	TEdit *EditComp1Tri;
	TEdit *EditComp4Tri;
	TGroupBox *GroupBox5;
	TLabel *Label77;
	TLabel *Label78;
	TLabel *Label79;
	TLabel *Label80;
	TLabel *Label81;
	TLabel *Label82;
	TLabel *Label83;
	TLabel *Label84;
	TLabel *Label85;
	TLabel *Label86;
	TLabel *Label87;
	TLabel *Label88;
	TEdit *EditCompJan;
	TEdit *EditCompFev;
	TEdit *EditCompMar;
	TEdit *EditCompAbr;
	TEdit *EditCompJul;
	TEdit *EditCompOut;
	TEdit *EditCompNov;
	TEdit *EditCompAgo;
	TEdit *EditCompMai;
	TEdit *EditCompJun;
	TEdit *EditCompSet;
	TEdit *EditCompDez;
	TGroupBox *GroupBox6;
	TLabel *Label89;
	TEdit *EditCompTotal;
	TGroupBox *GroupBox8;
	TLabel *Label60;
	TEdit *EditCompAnu;
	TTabSheet *TabSheet1;
	TGroupBox *GroupBox2;
	TComboBox *ComboBoxCargas;
	TGroupBox *GroupBox19;
	TPageControl *PageControlValApurados;
	TTabSheet *TabSheetDIC;
	TLabel *Label2;
	TLabel *Label1;
	TLabel *Label7;
	TLabel *Label10;
	TLabel *Label11;
	TLabel *Label8;
	TLabel *Label5;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *Label6;
	TLabel *Label9;
	TLabel *Label12;
	TEdit *EditDICJan;
	TUpDown *UpDown13;
	TUpDown *UpDown16;
	TEdit *EditDICAbr;
	TEdit *EditDICJul;
	TUpDown *UpDown19;
	TUpDown *UpDown22;
	TEdit *EditDICOut;
	TEdit *EditDICFev;
	TEdit *EditDICMai;
	TEdit *EditDICAgo;
	TEdit *EditDICNov;
	TUpDown *UpDown23;
	TUpDown *UpDown20;
	TUpDown *UpDown17;
	TUpDown *UpDown14;
	TEdit *EditDICDez;
	TEdit *EditDICSet;
	TEdit *EditDICJun;
	TEdit *EditDICMar;
	TUpDown *UpDown15;
	TUpDown *UpDown18;
	TUpDown *UpDown21;
	TUpDown *UpDown24;
	TTabSheet *TabSheetFIC;
	TLabel *Label14;
	TLabel *Label13;
	TLabel *Label19;
	TLabel *Label22;
	TLabel *Label23;
	TLabel *Label20;
	TLabel *Label17;
	TLabel *Label15;
	TLabel *Label16;
	TLabel *Label18;
	TLabel *Label21;
	TLabel *Label24;
	TEdit *EditFICJan;
	TEdit *EditFICAbr;
	TUpDown *UpDown1;
	TUpDown *UpDown4;
	TEdit *EditFICJul;
	TEdit *EditFICOut;
	TUpDown *UpDown7;
	TUpDown *UpDown10;
	TEdit *EditFICFev;
	TEdit *EditFICMai;
	TEdit *EditFICAgo;
	TEdit *EditFICNov;
	TUpDown *UpDown11;
	TUpDown *UpDown8;
	TUpDown *UpDown5;
	TUpDown *UpDown2;
	TEdit *EditFICMar;
	TEdit *EditFICJun;
	TEdit *EditFICSet;
	TEdit *EditFICDez;
	TUpDown *UpDown12;
	TUpDown *UpDown9;
	TUpDown *UpDown6;
	TUpDown *UpDown3;
	TGroupBox *GroupBox3;
	TLabel *Label43;
	TLabel *Label44;
	TLabel *Label45;
	TLabel *Label57;
	TLabel *Label58;
	TLabel *Label59;
	TEdit *EditConsRes;
	TEdit *EditConsCom;
	TEdit *EditConsInd;
	TEdit *EditConsRur;
	TEdit *EditConsOut;
	TEdit *EditConsA4;
	TGroupBox *GroupBox7;
	TLabel *Label56;
	TEdit *EditEnergia;
	TButton *ButtonCalcula;
	void __fastcall ButtonCalculaClick(TObject *Sender);
	void __fastcall ComboBoxSubestacoesChange(TObject *Sender);
	void __fastcall ComboBoxCargasChange(TObject *Sender);

	public:
		__fastcall TFormCompensacoes(TComponent* Owner, VTApl *apl, TWinControl *parent, AnsiString empresa = "");
		__fastcall ~TFormCompensacoes(void);

	private:
		VTCompensacoes* Compensacoes;
		VTApl*          apl;
};

//---------------------------------------------------------------------------
#endif

//---------------------------------------------------------------------------
//eof
