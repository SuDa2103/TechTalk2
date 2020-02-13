$(function() {

  $(".vote").on("click", ".upvote", function(){
    var post_id = $(this).parent().data("id");
    console.log('upvote for post' + post_id);

    $.ajax ({
      url: "/post/vote",
      method: "POST",
      data: {post_id: post_id},
      success: function(){
        console.log("success..");
      }
    })
  });
});
