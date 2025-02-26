Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form1 = class(Form)
    
  {$region FormDesigner}
  internal
    {$resource Unit1.Form1.resources}
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation
Type
book = class
author,title:string;
year:integer;
price:real;
class bookcount:integer;
constructor Create(auth,titl: string; yr:integer; pr:real);
class procedure countprint;
class function nextcount:integer;
procedure print;
function pnds(nds:real):real;
end;
constructor book.Create(auth,titl: string; yr: integer; pr:real);
begin
author:=auth;
title:=titl;
year:=yr;
price:=pr;
inc(bookcount);
end;
class procedure book.countprint;
begin
writeln('Число книг: ',bookcount);
end;
class function book.nextcount:integer;
begin
Result:=bookcount;
end;
procedure book.print;
begin
writeln('Наименование: ',title,'; автор: ',
author,'; цена: ',price);
end;
function book.pnds(nds:real):real;
begin
price:=price;
end;
Var b,c:book;
begin
b:=new book('А.С.Пушкин', 'Евгений Онегин', 2022,455);
c:=new book('А.С.Грибоедов','Горе от ума', 2022,260);
MessageBox.Show ('**Вызов классовых методов**');
writeln('**Вызов классовых методов**'); book.countprint;
writeln('Следующее количество: ',book.nextcount);
writeln('**Использование экземплярных полей и методов**');b.print;c.print;
writeln(b.price+c.price);
end.
