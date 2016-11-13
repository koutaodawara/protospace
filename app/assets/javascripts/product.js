$("[id = js-picture]").each(function() {
    const picture = $(this);
    const input = $(this).find('input[type=file]');
    input.change(function() {
      var file = $(this).prop('files')[0];
      const fileReader = new FileReader();
      if (!this.files.length) {
        alert("エラー")
     }
      if (!file.type.match('image.*')) {
        alert('エラー')
      }
      fileReader.onload = function() {
        picture.css({'background-image': 'url(' + fileReader.result + ')'
        });
      };
      fileReader.readAsDataURL(file);
    });
  });



// $("[id = js-picture]").each(function() {
//     const picture = $(this);
//     const input= $(this).find('input[type=file]')
//     input.change(function(){
//       let file = $(this).prop('files')[0];
//       if(file.type.match('image.*')) {
//         setImage(file, input);
//       } else {
//         alert("Please upload image");
//       }
//     });
//   }

//   function setImage(file, idName) {
//     var reader = new FileReader();
//     reader.onload = function() {
//       $(idName + ' img').attr('src', reader.result);
//       $(idName + ' img').addClass("image-preview")
//     }
//     reader.readAsDataURL(file);
//   }


// $(window).on("load", function(){
//   $("#add_new_form").on("click", function(){
//     $(this).addClass(".image_upload_plus");
//     $("li.list-group-item.col-md-4#add_new_form").hide();
//     console.log(this.id);
//     $("" + this.id).show();
//   });
// });
