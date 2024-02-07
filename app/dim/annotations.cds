using MyService as service from '../../srv/service';


annotate MyService.Dimension with @(UI: {
        LineItem #bar : [ // Only 3 item will be displayed
            {
                $Type : 'UI.DataField',
                Label : 'id',
                Value: id
            },
            {
                $Type : 'UI.DataField',
                Label : 'chartDimension',
                Value: chartDimension
            },
            {
                $Type : 'UI.DataField',
                Label : 'chartMeasure',
                Value:  chartMeasure
            }, 
            {
                $Type : 'UI.DataField',
                Label : 'years',
                Value:  years 
            },
            // {
            //     $Type : 'UI.DataField',
            //     Label : 'postingDate',
            //     Value: postingDate
            // }
        ],
    });
    