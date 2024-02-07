const cds = require('@sap/cds');
module.exports = cds.service.impl(async function () {
    let {
        attachments,
        table1,
        // Dimension
    } = this.entities;

    const c5re = await cds.connect.to('iflow1');

    this.before('READ', table1, async (req) => {
        debugger
        try {

            const resp = await c5re.get('/odata/v4/catalog/Books');

            const entry = [];
            
            var data1 = resp.value[0].ID;
            entry.push({
                id:data1,
                chartDimension:"dim1"
            });
            req.params.id[0];
            const a = await SELECT.from(attachments);

            // var test = resp.data.

            await INSERT.into(table1).entries(entry);


            var first = a;
            let data = [];
            // a.forEach(element => {
            //     if()
            // });

            // console.log("hey!");
        } catch (error) {

        }
    });


});



// const cds = require('@sap/cds');
// module.exports = cds.service.impl(async function () {
//     let {
//         attachments,
//         Dimension
//     } = this.entities;

//     const c5re = await cds.connect.to('iflow1');

//     this.before('READ', attachments, async (req) => {
//         debugger
//         try {

//             const resp = await c5re.get('/dev/getpo?pageno=1&nooflines=50&tabname=new');



//             // req.params.id[0];
//             const a = await SELECT.from(attachments);

//             // var test = resp.data.

//             await INSERT.into(Dimension).entries(resp.data)



//             var first = a;
//             let data = [];
//             // a.forEach(element => {
//             //     if()
//             // });
//             console.log("hey!");
//         } catch (error) {

//         }
//     });


// });