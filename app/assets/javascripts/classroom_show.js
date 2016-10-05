$('document').ready(function(){
  $('#test').on('click', function(event) {
    event.preventDefault();
    get('/classrooms/2/edit').then(result => {console.log(result)})
  });

  $('#create-subject').on('click', function(event){
    event.preventDefault();
    let testData = JSON.stringify({"subject" : {"name":'Test Subject 5'}})
    console.log(testData)
    post('/subjects', testData).then(result => {console.log(result)})
  });
});
