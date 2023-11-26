unit uUF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameBase, Data.DB,
  uRESTDWMemoryDataset, uRESTDWBasicTypes, uRESTDWBasicDB, uniGUIBaseClasses,
  uniImageList, uniPanel, uniScrollBox, uniBasicGrid, uniDBGrid, uniGUIClasses,
  uniEdit, uniPageControl, uniButton, uniBitBtn, uniLabel;

type
  TfrmUF = class(TFrameBase)
    FDQryFiltroUF: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmUF: TfrmUF;

implementation

{$R *.dfm}

uses MainModule;

end.
