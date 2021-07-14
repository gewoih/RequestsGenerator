unit uxRequest;

interface

type
    TRequest = class
    public
        id:				integer;
        templateId:		integer;
        queryId:		integer;
        xmlText:		AnsiString;
        comment:    	AnsiString;
        date:       	AnsiString;

        constructor Create(id: integer; templateId: integer; queryId: integer; xmlText: AnsiString; comment: AnsiString; date: AnsiString);
    end;

implementation

constructor TRequest.Create(id: integer; templateId: integer; queryId: integer; xmlText: AnsiString; comment: AnsiString; date: AnsiString);
begin
    Self.id := id;
    Self.templateId := templateId;
    Self.queryId := queryId;
    Self.xmlText := xmlText;
    Self.comment := comment;
    Self.date := date;
end;

end.
