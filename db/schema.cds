namespace product;

entity tab1{
    key id:UUID;
    customerName:String;
    PoNumber:Integer;
    customerNumber:Integer;
    orderDate:Date;
    soNumber:Integer;
    inquiryNumber:Integer;
    totalOrderItems:Integer;
}

entity tabp{
    key id: Integer;
    name:String;
}

entity Dim {
    key id             : String;
        chartDimension : String
                                @Analytics.Dimension;
        chartMeasure   : Decimal(15, 2)
                                @Analytics.Measure;
        years          : String @Common.FilterDefaultValue: '2023'
                                @Analytics.Dimension
                                @Search.defaultSearchElement;
// table : Association to one Tableyears;
}


annotate Dim with @Aggregation.ApplySupported: {
    $Type               : 'Aggregation.ApplySupportedType',
    PropertyRestrictions: true
};




entity student {
    key sid:Integer;
    sname:String;
    smail:String;   
}

entity table1{
    key id:String;
    title:String;
    stock:String;
}

