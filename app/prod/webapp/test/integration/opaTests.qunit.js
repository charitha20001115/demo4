sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'prod/test/integration/FirstJourney',
		'prod/test/integration/pages/tpList',
		'prod/test/integration/pages/tpObjectPage'
    ],
    function(JourneyRunner, opaJourney, tpList, tpObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('prod') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThetpList: tpList,
					onThetpObjectPage: tpObjectPage
                }
            },
            opaJourney.run
        );
    }
);