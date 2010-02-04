RemoteVote = {
  init: function() {
    $('.new_vote').ajaxFormWithJelly();
  },

  on_vote_yes: function(billId, noVotes, yesVotes) {
    $('#' + billId + ' .no_votes').html(noVotes);
    $('#' + billId + ' .yes_votes').html(yesVotes);
    $('#' + billId + ' .vote_no').html("");
    $('#' + billId + ' .vote_yes').html("Aye!");
  },

  on_vote_no: function(billId, noVotes, yesVotes) {
    $('#' + billId + ' .no_votes').html(noVotes);
    $('#' + billId + ' .yes_votes').html(yesVotes);
    $('#' + billId + ' .vote_no').html("Nay!");
    $('#' + billId + ' .vote_yes').html("");
  }

}