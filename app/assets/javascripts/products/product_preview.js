$(function() {
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
    })
  })
})
