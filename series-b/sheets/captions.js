function caption(which) {
  return db.find('url', which).map(function(el) {
    return  [ 
      "<div>",
      "  <h2>" + el.author + "</h2>",
      "  <h3>" + el.title + "<em>" + el.year + "</em></h3>",
      "</div>"
    ].join('');
  }).join('');
}

$(document).ready(function(){
  if(self.captions) {
    self.db = DB(captions);
    self.img_list = Array.prototype.slice.call($('img').map(function(){
      return this.src.split('/').slice(-1)[0];
    }));

    self.img_top = img_list.slice(0, 3);
    self.img_bottom = img_list.slice(-3);
    $(".stickers").before( "<div class='caption'>" + caption(img_top) + "</div>" );
    $(".stickers").after( "<div class='caption'>" + caption(img_bottom) + "</div>" );
  }
});
