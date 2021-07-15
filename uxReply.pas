unit uxReply;

interface

type
    TReply = class
    	id:			integer;
        queryId:	integer;
        xmlText:    AnsiString;
        date:		AnsiString;

        constructor Create(id: integer; queryId: integer; xmlText: AnsiString; date: AnsiString);
    end;

implementation

constructor TReply.Create(id: integer; queryId: integer; xmlText: AnsiString; date: AnsiString);
begin
    Self.id := id;
    Self.queryId := queryId;
    Self.xmlText := xmlText;
    Self.date := date;
end;

end.
