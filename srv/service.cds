using product as products from '../db/schema';

service MyService {

    @odata.draft.enabled

//    entity table1 as projection on products.tab1; 
entity tp as projection on products.tabp;

entity table1 as projection on products.table1;

entity Dimension as projection on products.Dim;

entity stud as projection on products.student;

    annotate Dimension with @UI.Chart #Dim: {
        ChartType          : #Donut,
        Measures           : [chartMeasure],
        MeasureAttributes  : [{
            Measure: chartMeasure,
            Role   : #Axis1
        }],
        Dimensions         : [chartDimension],
        DimensionAttributes: [{
            Dimension: chartDimension,
            Role     : #Category
        }]
    };
}

// annotate MyService.Dimension with @(UI: {
//         LineItem #bar : [ // Only 3 item will be displayed
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'id',
//                 Value: id
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'chartDimension',
//                 Value: chartDimension
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'chartMeasure',
//                 Value:  chartMeasure
//             }, 
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'years',
//                 Value:  years 
//             },
//             // {
//             //     $Type : 'UI.DataField',
//             //     Label : 'postingDate',
//             //     Value: postingDate
//             // }
//         ],
//     });
//     }






