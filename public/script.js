$(document).ready(function() {
  $('#calculateBtn').click(function() {
    var operand1 = parseFloat($('#operand1').val());
    var operator = $('#operator').val();
    var operand2 = parseFloat($('#operand2').val());

    $.ajax({
      url: '/calculate',
      method: 'POST',
      data: { operand1: operand1, operator: operator, operand2: operand2 },
      success: function(result) {
        $('#result').text(result);
      },
      error: function() {
        $('#result').text('Error: Invalid operator');
      }
    });
  });
});
