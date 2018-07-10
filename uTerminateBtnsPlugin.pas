unit uTerminateBtnsPlugin;

interface

uses
  RProAPI, RDA2_TLB;

type
  TRPro8ReceiptListTerminateBtn = class(TSideButton)
  private
    FRdaDoc: IRdaDocument;
    FRProApp: TRProApp;
  public
    procedure Initialize(RProApp: TRProApp; Doc: IRdaDocument); override;
    class function Menu: TSideMenu; override;
    class function Caption: string; override;
    class function PictureFileName: string; override;
    function Enabled: boolean; override;
    function Execute: TActionRequestSet; override;
  end;

  TRPro8ReceiptTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8SalesOrderListTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8SalesOrderTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8CustomersTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8VendorsTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8DepartmentsTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8InventoryTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8VouchersTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8VoucherListTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8MemosTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8MemoListTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8SlipTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8SlipListTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8POTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8POListTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8TOTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8TOListTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8TenderTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;

  TRPro8DepositsTerminateBtn = class(TRPro8ReceiptListTerminateBtn)
  public
    class function Menu: TSideMenu; override;
  end;


implementation

uses
  Forms;


procedure RProClassesAvailable(RProClassArrayProc: TRProClassArrayProc);
begin
  RProClassArrayProc([TRPro8ReceiptListTerminateBtn,
                      TRPro8ReceiptTerminateBtn,
                      TRPro8SalesOrderListTerminateBtn,
                      TRPro8SalesOrderTerminateBtn,
                      TRPro8CustomersTerminateBtn,
                      TRPro8VendorsTerminateBtn,
                      TRPro8DepartmentsTerminateBtn,
                      TRPro8InventoryTerminateBtn,
                      TRPro8VouchersTerminateBtn,
                      TRPro8VoucherListTerminateBtn,
                      TRPro8MemosTerminateBtn,
                      TRPro8MemoListTerminateBtn,
                      TRPro8SlipTerminateBtn,
                      TRPro8SlipListTerminateBtn,
                      TRPro8POTerminateBtn,
                      TRPro8POListTerminateBtn,
                      TRPro8TOTerminateBtn,
                      TRPro8TOListTerminateBtn,
                      TRPro8TenderTerminateBtn,
                      TRPro8DepositsTerminateBtn]);

end;

exports
  RProClassesAvailable;


{ TRPro8ReceiptListTerminateBtn }

procedure TRPro8ReceiptListTerminateBtn.Initialize(RProApp: TRProApp; Doc: IRdaDocument);
begin
  FRdaDoc := Doc;
  FRProApp := RProApp;
end;

class function TRPro8ReceiptListTerminateBtn.Menu: TSideMenu;
begin
  Result := smReceiptList;
end;

class function TRPro8ReceiptListTerminateBtn.Caption: string;
begin
  Result := 'Terminate!';
end;

class function TRPro8ReceiptListTerminateBtn.PictureFileName: string;
begin
  Result := 'Terminate.bmp';
end;

function TRPro8ReceiptListTerminateBtn.Enabled: boolean;
begin
  // called frequently by RetailPro
  Result := True;
end;

function TRPro8ReceiptListTerminateBtn.Execute: TActionRequestSet;
begin
  Application.Terminate;
end;

{ TRPro8ReceiptTerminateBtn }

class function TRPro8ReceiptTerminateBtn.Menu: TSideMenu;
begin
  Result := smReceipts;
end;

{ TRPro8SalesOrderListTerminateBtn }

class function TRPro8SalesOrderListTerminateBtn.Menu: TSideMenu;
begin
  Result := smSOList;
end;

{ TRPro8SalesOrderTerminateBtn }

class function TRPro8SalesOrderTerminateBtn.Menu: TSideMenu;
begin
  Result := smSO;
end;

{ TRPro8CustomersTerminateBtn }

class function TRPro8CustomersTerminateBtn.Menu: TSideMenu;
begin
  Result := smCustomers;
end;

{ TRPro8VendorsTerminateBtn }

class function TRPro8VendorsTerminateBtn.Menu: TSideMenu;
begin
  Result := smVendors;
end;

{ TRPro8DepartmentsTerminateBtn }

class function TRPro8DepartmentsTerminateBtn.Menu: TSideMenu;
begin
  Result := smDepartments;
end;

{ TRPro8InventoryTerminateBtn }

class function TRPro8InventoryTerminateBtn.Menu: TSideMenu;
begin
  Result := smInventory;
end;

{ TRPro8VouchersTerminateBtn }

class function TRPro8VouchersTerminateBtn.Menu: TSideMenu;
begin
  Result := smVouchers;
end;

{ TRPro8VoucherListTerminateBtn }

class function TRPro8VoucherListTerminateBtn.Menu: TSideMenu;
begin
  Result := smVoucherList;
end;

{ TRPro8MemosTerminateBtn }

class function TRPro8MemosTerminateBtn.Menu: TSideMenu;
begin
  Result := smMemos;
end;

{ TRPro8MemoListTerminateBtn }

class function TRPro8MemoListTerminateBtn.Menu: TSideMenu;
begin
  Result := smMemoList;
end;

{ TRPro8SlipTerminateBtn }

class function TRPro8SlipTerminateBtn.Menu: TSideMenu;
begin
  Result := smSlip;
end;

{ TRPro8SlipListTerminateBtn }

class function TRPro8SlipListTerminateBtn.Menu: TSideMenu;
begin
  Result := smSlipList;
end;

{ TRPro8POTerminateBtn }

class function TRPro8POTerminateBtn.Menu: TSideMenu;
begin
  Result := smPO;
end;

{ TRPro8POListTerminateBtn }

class function TRPro8POListTerminateBtn.Menu: TSideMenu;
begin
  Result := smPOList;
end;

{ TRPro8TOTerminateBtn }

class function TRPro8TOTerminateBtn.Menu: TSideMenu;
begin
  Result := smTO;
end;

{ TRPro8TOListTerminateBtn }

class function TRPro8TOListTerminateBtn.Menu: TSideMenu;
begin
  Result := smTOList;
end;

{ TRPro8TenderTerminateBtn }

class function TRPro8TenderTerminateBtn.Menu: TSideMenu;
begin
  Result := smTender;
end;

{ TRPro8DepositsTerminateBtn }

class function TRPro8DepositsTerminateBtn.Menu: TSideMenu;
begin
  Result := smDeposits;
end;

end.
